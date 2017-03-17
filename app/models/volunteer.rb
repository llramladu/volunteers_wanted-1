class Volunteer < ActiveRecord::Base
  validates_presence_of :description

  belongs_to :user_volunteer_relationship
end
