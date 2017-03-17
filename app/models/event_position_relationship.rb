class EventPositionRelationship < ActiveRecord::Base
  belongs_to :position
  belongs_to :event
end
