json.array!(@mailaddresses) do |mailaddress|
  json.extract! mailaddress, :id, :mailadd_id, :address, :city, :state, :zipcode, :project_id
  json.url mailaddress_url(mailaddress, format: :json)
end
