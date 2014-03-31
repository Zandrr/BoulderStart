class PositionsController < ApplicationController


  def index
     
  end

  def show
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
    @position.user_id = current_user.id
    # debugger

   
      if @position.save
          redirect_to @position
      else
        render @position.errors
      end
  end

  def position_params
    params.require(:position).permit(:title)
  end

end
