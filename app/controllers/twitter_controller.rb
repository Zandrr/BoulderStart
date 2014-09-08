class TwitterController < ApplicationController
  def index


  	require "rubygems"
    require "twitter"
  
    # Certain methods require authentication. To get your Twitter OAuth credentials,
    # register an app at http://dev.twitter.com/apps
@client = Twitter::REST::Client.new do |config|
  # config.consumer_key        = "acupICugan9LNSpGPpg"
  # config.consumer_secret     = "DCgAwp7ZhV5cQsbadhtfEHVHBvqUXvUiH3XmjGLJA"
    end

      @users = ["PivotDesk", "GnipEng", "SiliconFlatiron"]

  end
  



end
