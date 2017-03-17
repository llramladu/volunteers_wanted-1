require 'test_helper'

class UserSkillRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user has many skills" do
    user = User.create(id: 6000, name:"Terminator", email:"Imnotarobot@thefuture.com", password:"security", phoneNum:"4032216786")
    skill = Skill.create(id: 6000, description:"I have a very particular set of skills")
    user.user_skill_relationships.create(skill: skill)

    relationships = user.skills
    assert relationships.count == 1
  end
end
