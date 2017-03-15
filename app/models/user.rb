class User < ActiveRecord::Base
	has_many :user_event_relationships
	has_many :events, through: :user_event_relationships
end
