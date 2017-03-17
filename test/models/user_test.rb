require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save user without required fields" do
    user = User.new
    assert_not user.valid?
    assert_equal [:name, :email, :password, :phoneNum], user.errors.keys
  end 
end
