class CompanyMailer < ActionMailer::Base
 include SendGrid

 def resume_message(user)
 	mail to: => 'alexander.campbell@colorado.edu', :subject => "test email"
 end


end
