class StudentGroupsController < ApplicationController

	def index

		@things = StudentGroups.all.asc
		@count = 0
		@title = "Student Groups"
	end
end
