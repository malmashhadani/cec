json.array!(@projects) do |project|
  json.extract! project, :id, :project_id, :name, :description, :objective, :synopsis, :background, :comment, :url, :urldescription, :coursenumber, :coursedepartment, :coursenotes, :picture, :originator_id, :unit_id, :county_id, :zipcode_id
  json.url project_url(project, format: :json)
end
