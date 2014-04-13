class Position < ActiveRecord::Base
  belongs_to :users

  acts_as_taggable_on :tags, :categories, :skills, :interests 
  scope :desc, order('Position.created_at DESC')

end
