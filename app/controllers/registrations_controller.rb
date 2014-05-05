class RegistrationsController < Devise::RegistrationsController
  def new
    session[:orgtype] = params[:session_setter] 
    super
  end

  def create
    super
    redirect_to users_path if current_user.startup?
  end

  def update
    super
  end

end