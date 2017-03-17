require 'test_helper'

class UserPositionRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a position is related to a user" do
    position = Position.create(id: 30, name: "test position", description: "test description")
    user = User.create(id: 30, name:"Mr. Sue", email: "Sue@email.com", password: "password", phoneNum: "test")
    position.user_position_relationships.create(user: user)
    relationships = user.positions
    assert relationships.count == 1
  end
end
