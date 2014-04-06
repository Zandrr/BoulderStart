class Funding < ActiveRecord::Base

	scope :asc, order('fundings.name ASC')
end
