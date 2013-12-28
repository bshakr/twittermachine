class TwitterListener

    def initialize
      TweetStream.configure do |config|
        config.consumer_key       = 'RtjwtqwR8qHaWZAfuN0A'
        config.consumer_secret    = 'DZkhQzcefOl6bUI9pw5astYVHuCLHOfrtGjw9fOLuv8'
        config.oauth_token        = '53430307-LGTx23VsoyVaUykelz3oT0YhVd5COKSXgoE3xiOjK'
        config.oauth_token_secret = 'ShrYcGCrK6aHixuyvFGfAHnFGLPGZI2EdcskSin2IKKaT'
        config.auth_method        = :oauth
      end
      @client = TweetStream::Client.new
    end

    def follow_happiness
        @client.track('happiness')  do |status|
          puts "#{status}"
        end
    end
end