class Position < ActiveRecord::Base
  validates_presence_of :name, :description

  belongs_to :event_position_relationship

  has_many :user_position_relationships
  has_many :users, through: :user_position_relationships
end
