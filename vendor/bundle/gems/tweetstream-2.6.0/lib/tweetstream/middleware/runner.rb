module TweetStream
  module Middleware
    class Runner

      EMPTY_MIDDLEWARE = lambda { |env| env }

      def initialize(stack)
        @stack = stack
        @chain = build_chain
      end

      def call(env)
        @chain.call(env)
      end

      private

      def build_chain
        @stack.reverse.inject(EMPTY_MIDDLEWARE) do |next_middleware, current_middleware|
          # Unpack the actual item
          klass, args = current_middleware

          if klass.is_a?(Class)
            # If the klass actually is a class, then instantiate it with
            # the app and any other arguments given.
            klass.new(next_middleware, *args)
          elsif klass.respond_to?(:call)
            # Make it a lambda which calls the item then forwards up
            # the chain.
            lambda do |env|
              klass.call(env)
              next_middleware.call(env)
            end
          else
            raise "Invalid middleware, doesn't respond to `call`: #{klass.inspect}"
          end
        end

      end
    end
  end
end
