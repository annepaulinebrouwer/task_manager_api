This is a Ruby on Rails project. The run the file please

You can signup or use the following log-in:
  email: blendle@gmail.com
  password: password

Using curl via the terminal

To send a GET request to the API for e.g. tasklist/1:

curl -i -X GET                                                              \
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

To create a new task and assign it to a tasklist (by providing tasklist_id)

curl -i -X POST
       -H 'Content-Type: application/json'              \
       -H 'X-User-Email: blendle@gmail.com'               \
       -H 'X-User-Token: Vynt534YuSzsLsJNysB1'          \
       -d '{ "task": { "name": "Flights", "description": "Checking flights to different holiday destations and different timeslots", "tasklist_id": "2" } }'    \
        http://localhost:3000/api/v1/tasks
