json.array!(@counties) do |county|
  json.extract! county, :id, :county_id, :name
  json.url county_url(county, format: :json)
end
