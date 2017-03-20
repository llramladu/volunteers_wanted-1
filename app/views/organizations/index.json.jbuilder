json.array!(@organizations) do |organization|
  json.extract! organization, :id, :biography, :name
  json.url organization_url(organization, format: :json)
end
