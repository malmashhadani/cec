json.array!(@units) do |unit|
  json.extract! unit, :id, :unit_id, :name
  json.url unit_url(unit, format: :json)
end
