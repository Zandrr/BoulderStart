class UsersController < ApplicationController
  def index
  	@candidates = User.find_all_by_discipline(params[:filter])
  	raise
  end

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs
    #raise 
  end

end
