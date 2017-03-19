require 'test_helper'

class OrganizationEventRelationshipTest < ActiveSupport::TestCase
  test "an organization is related to an event" do
    organization = Organization.create!(id: 55, name: "test", password: "password", encrypted_password: "password", email: "aaaemail@email.com", phoneNum: "6085553545")
    organization.save

  	event = Event.create(id: 55, name: "working", description: "working", date: DateTime.current, endDate: DateTime.current)
  	organization.organization_event_relationships.create(event: event)

  	relationships = organization.events
  	assert relationships.count == 1
  end
end
