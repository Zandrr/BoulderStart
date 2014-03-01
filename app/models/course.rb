class Course < ActiveRecord::Base
	#attr_accessor :name, :code, :description
	scope :asc, order('courses.name ASC')
end
