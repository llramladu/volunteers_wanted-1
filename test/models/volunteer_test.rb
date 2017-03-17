require 'test_helper'

class VolunteerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "volunteers requires name" do
    volunteer = Volunteer.new
    assert_not volunteer.save

    volunteer.description = "Blacksmith Labor Union"
    assert volunteer.save
  end 
end
