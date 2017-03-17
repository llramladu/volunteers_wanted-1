require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "skill requires name" do
    skill = Skill.new
    assert_not skill.save

    skill.description = "making nails"
    assert skill.save
  end 
end
