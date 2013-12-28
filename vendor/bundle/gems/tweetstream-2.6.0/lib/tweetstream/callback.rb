module TweetStream
  class Callback
    def initialize(client)
      @client = client
    end

    def call(message, &block)
    end
  end
end
