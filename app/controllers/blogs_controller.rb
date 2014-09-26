class BlogsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    if params[:filter] == "false"
      @posts = Blog.find_all_by_press(false)
    elsif params[:filter] == "true"
      @posts = Blog.find_all_by_press(true)
    else
      @posts = []
      @user = User.all
      @user.each do |user|
        user.blogs.each do |post|
          @posts << post
        end
      end
    end
    @posts = @posts.sort_by {|post| post.created_at }.reverse
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show

    
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.create(blog_params)
    @blog.user_id = current_user.id

    respond_to do |format|
      if @blog.save
        format.html { redirect_to blogs_path, notice: 'Blog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blog }
      else
        -raise
        format.html { render action: 'new' }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    Blog.find(params[:id]).destroy
    redirect_to blogs_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:content, :title, :press)
    end
end
