class UsersController < ApplicationController
  def index
  	@candidates = User.find_all_by_discipline(params[:filter])
  end

  def show
    @user = User.find(params[:id])
    #@blogs = @user.blogs
  end

end
