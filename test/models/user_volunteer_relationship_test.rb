require 'test_helper'

class UserVolunteerRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'a user has many volunteer histories' do
    user = User.create(id: 7000, name: "Billy", email: "billy@internet.com", password: "password", phoneNum: "555555")
    volunteer = Volunteer.create(id: 7000, description:"Ice Cream Tasting")

    user.user_volunteer_relationships.create(volunteer: volunteer)
   
    relationships = user.volunteers
    assert relationships.count == 1
  end
end
