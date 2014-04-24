class CompanyMailer < ActionMailer::Base
 default from: "startups2students@gmail.com"
 #include SendGrid

def email_list
  @startups = User.find_all_by_orgtype('startup')
  @maillist = []
  @startups.each do |org|
  		@maillist << org.email
  end
  return @maillist
end

 def resume_mailer(user)

 	mail(to: email_list, subject: 'Your weekly candidate digest.')
 end


end
