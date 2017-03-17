class Position < ActiveRecord::Base
  validates_presence_of :name, :description

  belongs_to :event_position_relationship
end
