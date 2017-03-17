class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
	validates :phoneNum, presence: true
	validates_length_of :password, minimum: 5

	has_many :user_event_relationships
	has_many :events, through: :user_event_relationships

	has_many :user_position_relationships
	has_many :positions, through: :user_position_relationships

  has_many :user_trait_relationships
  has_many :traits, through: :user_trait_relationships
  
  has_many :user_skill_relationships
  has_many :skills, through: :user_skill_relationships

  has_many :user_volunteer_relationships
  has_many :volunteers, through: :user_volunteer_relationships

  has_many :user_work_relationships
  has_many :works, through: :user_work_relationships
end
