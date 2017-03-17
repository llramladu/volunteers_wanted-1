require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "work requires name" do
    work = Work.new
    assert_not work.save

    work.description = "Software Engineer/Nail Maker"
    assert work.save
  end 
end
