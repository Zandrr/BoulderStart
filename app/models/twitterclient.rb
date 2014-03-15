class Twitterclient


def gettweet
	client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "acupICugan9LNSpGPpg"
  config.consumer_secret     = "DCgAwp7ZhV5cQsbadhtfEHVHBvqUXvUiH3XmjGLJA"

	end
		return client
	end
end
