class UsersController < ApplicationController
  def index
  	if params.has_key?(:filter)
  		@candidates = User.find_all_by_discipline(params[:filter])
  	else
  		@candidates = User.all
  	end
  end

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs
    #raise 
  end

end
