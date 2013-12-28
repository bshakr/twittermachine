module TweetStream
  module Middleware
    class Builder
      attr_accessor :options

      def initialize(options={}, &block)
        @options = options
        @stack   = []
        yield self if block_given?
      end

      def use(middleware, *args)
        @stack << [middleware, args]
      end

      def call(env=nil)
        TweetStream::Runner.new(@stack.dup).call(env)
      end

    end
  end
end
