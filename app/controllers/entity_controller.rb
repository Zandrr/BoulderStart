class EntityController < ApplicationController
  def index

  	@entity = Entities.all
  end

  def show
  end
end
