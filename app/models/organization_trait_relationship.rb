class OrganizationTraitRelationship < ActiveRecord::Base
  belongs_to :organization
  belongs_to :trait
end
