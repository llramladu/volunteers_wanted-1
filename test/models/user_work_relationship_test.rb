require 'test_helper'

class UserWorkRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user has many work histories" do
    user = User.create(id:8000, name:"Gary", email:"gary@email.org", password:"password", phoneNum: "406")
    work = Work.create(id:8000, description:"Ball pit cleaner")
    user.user_work_relationships.create(work: work)

    relationships = user.works
    assert relationships.count == 1
  end

end
