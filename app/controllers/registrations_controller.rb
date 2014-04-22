class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    CompanyMailer.resume_message(@user).deliver unless @user.invalid?
    binding.pry
  end

  def update
    super
  end
end