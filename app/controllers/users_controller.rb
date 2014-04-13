class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs
    #raise 
  end

end
