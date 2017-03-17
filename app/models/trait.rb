class Trait < ActiveRecord::Base
  validates_presence_of :name

  has_many :organization_trait_relationships
  has_many :organizations, through: :organization_trait_relationships

  has_many :event_trait_relationships
  has_many :events, through: :event_trait_relationships

  has_many :user_trait_relationships
  has_many :users, through: :user_trait_relationships
end
