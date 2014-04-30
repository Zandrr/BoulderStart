class RegistrationsController < Devise::RegistrationsController
  def new
    session[:orgtype] = params[:session_setter] 
    super
  end

  def create
    super
  end

  def update
    super
  end

end