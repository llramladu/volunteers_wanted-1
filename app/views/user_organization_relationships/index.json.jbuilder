json.array!(@user_organization_relationships) do |user_organization_relationship|
  json.extract! user_organization_relationship, :id
  json.url user_organization_relationship_url(user_organization_relationship, format: :json)
end
