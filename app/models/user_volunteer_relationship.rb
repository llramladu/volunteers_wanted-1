class UserVolunteerRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :volunteer
end
