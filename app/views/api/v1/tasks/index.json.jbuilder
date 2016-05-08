json.tasks do
  json.array! @tasks do |task|
    json.id task.id
    json.name task.name
    json.description task.description
  end
end
