json.array!(@physicaladdresses) do |physicaladdress|
  json.extract! physicaladdress, :id, :phyadd_id, :address, :city, :state, :zipcode, :project_id
  json.url physicaladdress_url(physicaladdress, format: :json)
end
