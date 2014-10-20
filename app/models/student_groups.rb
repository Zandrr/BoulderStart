class StudentGroups < ActiveRecord::Base
	scope :asc, order('student_groups.name ASC')
end
