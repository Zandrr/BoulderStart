class CompanyMailer < ActionMailer::Base
 default from: "startups2students@gmail.com"
 include SendGrid

def email_list
  @startups = User.find_all_by_orgtype('startup')
  @maillist = []
  @startups.each do |org|
  		@maillist << org.email
  end
  return @maillist
end

 def resume_mailer
  @candidates = User.week_of_candidates
  @maillist = email_list
  binding.pry
  @maillist.each do |mail_item|
 	  mail(to: mail_item, subject: 'These candidates want to work at your awesome startup!')
  end
 end


end
