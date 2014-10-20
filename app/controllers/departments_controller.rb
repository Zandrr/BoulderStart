class DepartmentsController < ApplicationController

  def index
    @things = Departments.all
    @count = 0
    @title = "Departments & Groups"
  end
end