json.array!(@projects) do |project|
  json.extract! project, :id, :title, :technologies, :description
  json.url project_url(project, format: :json)
end
