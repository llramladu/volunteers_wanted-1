class Organization < ActiveRecord::Base
  has_many :organization_event_relationships
  has_many :events, through: :organization_event_relationships
end
