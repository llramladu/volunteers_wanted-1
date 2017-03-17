class Skill < ActiveRecord::Base
  validates_presence_of :description

  has_many :user_skill_relationships
  has_many :users, through: :user_skill_relationships
end
