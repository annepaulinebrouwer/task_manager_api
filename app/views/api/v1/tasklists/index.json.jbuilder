json.tasklists do
  json.array! @tasklists do |tasklist|
    json.id tasklist.id
    json.name tasklist.name
    json.description tasklist.description
    unless tasklist.tasks.empty?
      json.tasks tasklist.tasks do |task|
        json.name task.name
        json.description task.description
      end
    end
  end
end
