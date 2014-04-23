class CompanyMailer < ActionMailer::Base
 default from: "startups2students@gmail.com"
 #include SendGrid
# @startups = User.find_all_by_orgtype('startup').email
# @maillist = []
# 	@startups.each do |org|
# 		@maillist << org.email
	end

 def resume_mailer(user)
 	mail(to: 'alexande.campbell@cololrado.edu', subject: 'WE CAN SEND EMAIL')
 end


end
