class EventTraitRelationship < ActiveRecord::Base
  belongs_to :event
  belongs_to :trait
end
