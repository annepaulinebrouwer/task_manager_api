json.tasklists do
  json.array! @tasklists do |tasklist|
    json.id tasklist.id
    json.name tasklist.name
    json.description tasklist.description
  end
end
