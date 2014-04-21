  ActionMailer::Base.smtp_settings = {
    :address => "smtp.sendgrid.net",
    :port => 25,
    :domain => "localhost:3000",
    :authentication => :plain,
    :user_name => 'campbellalexx',
    :password => 'sendgrid-11'
  }