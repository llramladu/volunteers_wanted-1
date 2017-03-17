require 'test_helper'

class UserTraitRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "users can have many traits" do
    @user = users(:one)
    @trait = traits(:one)

    @user.user_trait_relationships.create(trait: @trait)
    relationships = @user.traits

    assert relationships.count == 1
  end
end
