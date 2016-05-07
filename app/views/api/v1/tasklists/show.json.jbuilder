json.tasklist do
  json.id @tasklist.id
  json.name @tasklist.name
  json.description @tasklist.description
  # json.tasks @tasklist.tasks do |task|
  #   json.id task.id
  #   json.content task.content
  # end
end
