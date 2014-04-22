class CompanyMailer < ActionMailer::Base
 default from: "startups2students@gmail.com"
 #include SendGrid

 def resume_mailer(user)
 	mail(to: 'alexander.campbell@colorado.edu', subject: 'WE CAN SEND EMAIL')
 end


end
