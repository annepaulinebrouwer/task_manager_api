Hello!
This is a Task Manager API.

You can
  - create tasklist
  - delete tasklist
  - update tasklist

In a tasklist you can
    - create tasks
    - update tasks
    - delete tasks

You can make customized tags to orden your tasks
      - create tags
      - assign tags to a task
      - you can use tags on multiple tasks (e.g. #urgent)

*******************************************************************************
The API is build using Ruby on Rails
You can access the API on https://taskmanagerapi.herokuapp.com/api/v1/tasklists
To use the create, update and delete functions you will need to sign up.
Pundit is used to build authorization policies.

I also build an API Client, using Ruby on Rails.
You can access the API Client on http://taskmanager-api-client.herokuapp.com
At the client side the following functions are developed
  - show all tasklist
  - show a tasklist with tasks
  - create tasklist
  - delete tasklist
  - create tasks
  - delete tasks

In order to use the other functions of the API it is possible to use curl and send requests via the command line. Because authentication is required (and authorization regarding update) I provide an user-token. Beaware that some of the commands are depending on specific id's. It could be posible that the object doesn't exist anymore, because it has been deleted. Try the command than with another id.

*************************************************************************

To send a PATCH request to the API for e.g. updating tasklist/2:

curl -i -X PATCH                                      \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "tasklist": { "name": "Holiday", "description": "This is update is send via the commandline"  } }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tasklists/2

To send a POST request to create a new task and assign it to a tasklist (tasklist_id: 2)

curl -i -X POST  \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "task": { "name": "Visa", "description": "Checking embassy for visa requirements", "tasklist_id": "2" } }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tasks


To send a POST request to create a new tag

curl -i -X POST \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "tag": { "name": "#tomorrow" } }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tags

To assign a existing tag (#today) to a task (with id:17)

curl -i -X POST \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "tasktagrelation": { "tag_id": "1", "task_id": "17"} }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tasktagrelations

******************************************************************************

Have a look at the API Client on http://taskmanager-api-client.herokuapp.com

*****************************************************************************
