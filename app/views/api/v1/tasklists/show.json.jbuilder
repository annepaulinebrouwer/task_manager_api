json.tasklist do
  json.id @tasklist.id
  json.name @tasklist.name
  json.description @tasklist.description
  json.tasks @tasklist.tasks do |task|
    json.id task.id
    json.name task.name
    json.description task.description
      json.tag task.tasktagrelations do |relation|
        json.name Tag.find(relation.tag_id).name
      end
  end
end
