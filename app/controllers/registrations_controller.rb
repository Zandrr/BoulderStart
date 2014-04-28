class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    CompanyMailer.resume_mailer(@user).deliver unless @user.invalid? or @user.startup?
  end

  def update
    super
  end

end