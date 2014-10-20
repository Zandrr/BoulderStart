class JobsController < ApplicationController

  def index
    @things = Jobs.all
    @count = 0
    @title = "Jobs"
  end
end