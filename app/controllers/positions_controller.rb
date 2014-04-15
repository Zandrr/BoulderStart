class PositionsController < ApplicationController


  def index
      @positions = Position.joins(:user).where(:users => {:orgtype => "Company"})
  end

  def show
      current_user.positions.each do |position|
      @skills = position.skill_list
      @interests = position.interest_list
      @categories = position.category_list
  end



  end

  def destroy
  end

  def new
  end

  def edit
  end

  def create
    @position = Position.create(position_params)
    @position.skill_list = (params['position']['skills'])
    @position.interest_list = (params['position']['interests'])
    @position.user_id = current_user.id

      if @position.save
          redirect_to user_path(@position.user)
      else
        render @position.errors
      end
  end

  def position_params
    params.require(:position).permit(:title)
  end

end
