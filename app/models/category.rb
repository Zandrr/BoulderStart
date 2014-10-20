class Category < ActiveRecord::Base
  belongs_to :users
  belongs_to :positions
end
