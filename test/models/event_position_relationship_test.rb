require 'test_helper'

class EventPositionRelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "an event has many positions" do
    event = Event.create(id: 27))
    position1 = Position.create(id: 55)
    position2 = Position.create(id: 56)

    event.event_position_relationships.create(position: position1)
    event.event_position_relationships.create(position: position2)


    relationships = event.positions
    puts relationships.count
    assert relationships.count == 2
  end
end
