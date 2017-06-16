json.extract! project, :id, :name, :company, :description, :skill, :peopleWorking, :peopleNeeded, :created_at, :updated_at
json.url project_url(project, format: :json)
