require 'test_helper'

class TraitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "traits requires name" do
    trait = Trait.new
    assert_not trait.save

    trait.name = "Blacksmithing"
    assert trait.save
  end 
end
