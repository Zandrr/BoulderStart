class Position < ActiveRecord::Base
  belongs_to :user

  scope :desc, order('Position.created_at DESC')
end
