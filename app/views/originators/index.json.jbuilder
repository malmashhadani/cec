json.array!(@originators) do |originator|
  json.extract! originator, :id, :originator_id, :name, :phonenumber, :phonedescription, :email, :emaildescription, :faxnumber
  json.url originator_url(originator, format: :json)
end
