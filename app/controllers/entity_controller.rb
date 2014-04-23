class EntityController < ApplicationController
  def index

  	@things = Entities.all
  	@count = 0
  	@title = "Business Development Entities"
  end

  def show
  end
end
