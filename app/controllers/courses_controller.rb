class CoursesController < ApplicationController
  def new
  end

  def index
  	if params.has_key?(:filter)
  		@courses = Course.find_all_by_discipline(params[:filter])
  		@current_course = Course.find_by_discipline(params[:filter]).discipline
  	else
  		@courses = Course.all
  		@current_course = 'All'
  	end
  end

end
