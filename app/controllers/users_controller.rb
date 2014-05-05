class UsersController < ApplicationController
  respond_to :html

  def index
  	if params.has_key?(:filter)
<<<<<<< HEAD
  		@candidates = User.where(:orgtype => 'candidate').find_all_by_discipline(params[:filter])
  	else
  		@candidates = User.where(:orgtype => 'candidate')
  	end
=======
      @candidates = User.where(:orgtype => 'candidate').find_all_by_discipline(params[:filter])
    else
      @candidates = User.where(:orgtype => 'candidate')
>>>>>>> features/testing
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    @blogs = @user.blogs
  end

  def weekly_emails
    CompanyMailer.resume_mailer.deliver
    redirect_to root_path, :notice => "Emails delivered!"
=======
    #@blogs = @user.blogs
>>>>>>> features/testing
  end

end
