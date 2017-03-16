require 'test_helper'

class OrganizationEventRelationshipTest < ActiveSupport::TestCase
  test "an organization is related to an event" do
  	organization = Organization.create(id: 55)
  	event = Event.create(id: 55)
  	organization.organization_event_relationships.create(event: event)

  	relationships = organization.events
  	assert relationships.count == 1
  end
end
