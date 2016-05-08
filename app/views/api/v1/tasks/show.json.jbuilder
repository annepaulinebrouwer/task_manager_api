json.task do
  json.id @task.id
  json.name @task.name
  json.description @task.description
  if @task.tasklist_id != nil
    json.tasklist Tasklist.find(@task.tasklist_id).name
  end
  json.tag @task.tasktagrelations do |relation|
    json.name Tag.find(relation.tag_id).name
  end
end
