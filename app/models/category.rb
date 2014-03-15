class Category < ActiveRecord::Base
  belongs_to :users
  belongs_to :positions

  acts_as_taggable
  acts_as_taggable_on :interests
end
