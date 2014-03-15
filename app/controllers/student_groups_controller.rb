class StudentGroupsController < ApplicationController

	def index

		@studentgroups = StudentGroups.all.asc
		@count = 0
	end
end
