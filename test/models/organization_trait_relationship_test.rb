require 'test_helper'

class OrganizationTraitRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a trait is related to an organization" do
    trait = Trait.create(id: 100, name: "Saucy")
    organization = Organization.create(id: 100, email: "test", password: "password", biography: "Skateboards for Everybody", name: "Organization", phoneNum: "6678823982")
    organization.organization_trait_relationships.create(trait: trait)

    relationships = organization.traits
    assert relationships.count == 1
  end
end
