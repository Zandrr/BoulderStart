class CompanyMailer < ActionMailer::Base
 default from: "startups2students@gmail.com"
 #include SendGrid

 def resume_mailer(user)
 	mail(to: 'fletcher.richman@colorado.edu', subject: 'WE CAN SEND EMAIL')
 end


end
