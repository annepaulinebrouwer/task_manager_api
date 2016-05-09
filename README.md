This is a Ruby on Rails project.
You will need to run a local server before you can run the app. Download the  via your termial using the command "rails s"


You can signup or use the following log-in:
  email: blendle@gmail.com
  password: password

Using curl via the terminal

*********************************local host****************************************

To send a GET request to the API for e.g. tasklist/1:

curl -i -X GET                                                             \
       -H 'Content-Type: application/json'                                     \
       -H 'X-User-Email: blendle@gmail.com'                                      \
       -H 'X-User-Token: Vynt534YuSzsLsJNysB1'                                 \
       http://localhost:3000/api/v1/tasklists/1

To send a PATCH request to the API for e.g. updating tasklist/2:

curl -i -X PATCH                                      \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: Vynt534YuSzsLsJNysB1'          \
       -d '{ "tasklist": { "name": "Holiday" } }'    \
       http://localhost:3000/api/v1/tasklists/2

curl -i -X DELETE                                     \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: Vynt534YuSzsLsJNysB1'          \
        http://localhost:3000/api/v1/tasks/22

*********************HEROKU*********************************************************
To send a POST request to create a tasklist

curl -i -X POST \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "tasklist": { "name": "Work", "description": "All these tasks related to the my working life" } }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tasklists

To send a POST request to create a new task and assign it to a tasklist (by tasklist_id)

curl -i -X POST  \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "task": { "name": "Flights", "description": "Checking flights to different holiday destations and different timeslots", "tasklist_id": "2" } }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tasks

curl -i -X POST  \
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: n9jc9FRoJ28JvzcdJj_K'          \
       -d '{ "task": { "name": "Tours", "description": "Checking jungle tours", "tasklist_id": "2" } }'    \
       https://taskmanagerapi.herokuapp.com/api/v1/tasklists
