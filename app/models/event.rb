class Event < ActiveRecord::Base
  validates_presence_of :name, :description, :date, :endDate

  has_many :user_event_relationships
  has_many :users, through: :user_event_relationships

  has_many :organization_event_relationships
  has_many :organizations, through: :organization_event_relationships

  has_many :event_position_relationships
  has_many :positions, through: :event_position_relationships

  has_many :event_trait_relationships
  has_many :traits, through: :event_trait_relationships
end
