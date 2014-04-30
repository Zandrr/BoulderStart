class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_in_path_for(resource)
  
  #   if current_user.startup?
  #     users_path
  #   else
  #     root_path(resource)
  #   end
  # end

  # def after_sign_in_path_for(resource)
  #   user_path(resource)
  # end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :website, :twitter, :github, :linkedin, :orgtype, :avatar, :discipline) }
  end
end
