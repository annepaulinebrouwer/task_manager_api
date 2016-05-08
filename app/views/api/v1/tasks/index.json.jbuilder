json.tasks do
  json.array! @tasks do |task|
    json.id task.id
    json.name task.name
    json.description task.description
    if task.tasklist_id != nil
      json.tasklist Tasklist.find(task.tasklist_id).name
    end
    unless task.tasktagrelations.empty?
      json.tag task.tasktagrelations do |relation|
        json.name Tag.find(relation.tag_id).name
      end
    end
  end
end
