require 'test_helper'

class EventTraitRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a trait is related to an event" do
    trait = Trait.create(id: 63, name: "smelly")
    event = Event.create(id: 63, name: "Truckin'", description: "Just keep on, you get it", date: DateTime.current, endDate: DateTime.current)
    trait.event_trait_relationships.create(event: event)
    
    relationships = trait.events
    assert relationships.count == 1
  end
end
