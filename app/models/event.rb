class Event < ActiveRecord::Base
  has_many :user_event_relationships
  has_many :users, through: :user_event_relationships

  has_many :organization_event_relationships
  has_many :organizations, through: :organization_event_relationships
end
