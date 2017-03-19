class Organization < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name, :password, :email, :phoneNum
  validates_length_of :password, minimum: 5

  has_many :organization_event_relationships
  has_many :events, through: :organization_event_relationships

  has_many :organization_trait_relationships
  has_many :traits, through: :organization_trait_relationships

  has_many :user_organization_relationships
  has_many :users, through: :user_organization_relationships
end
