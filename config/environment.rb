# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.raise_delivery_errors = true



ActionMailer::Base.smtp_settings = {
    :address => "smtp.sendgrid.net",
    :port => 587,
    :domain => "boulderstartups.herokuapp.com",
    :authentication => :plain,
    :user_name => 'campbellalexx',
    :password => ENV['sendgridboulder'],
    :enable_starttls_auto => true
  }



# Initialize the Rails application.
SampleApp::Application.initialize!