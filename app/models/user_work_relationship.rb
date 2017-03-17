class UserWorkRelationship < ActiveRecord::Base

  belongs_to :user
  belongs_to :work

end
