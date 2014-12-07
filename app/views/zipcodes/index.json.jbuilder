json.array!(@zipcodes) do |zipcode|
  json.extract! zipcode, :id, :zipcode_id, :zipcode, :county_id
  json.url zipcode_url(zipcode, format: :json)
end
