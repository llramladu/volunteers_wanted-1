class UserOrganizationRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
end
