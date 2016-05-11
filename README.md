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
  - you can use tags on multiple tasks (e.g. #today, #urgent)

*******************************************************************************
The API is build using Ruby on Rails
You can access the API on https://taskmanagerapi.herokuapp.com/api/v1/tasklists
To use the create, update and delete functions you will need to sign up.
The Task Manager API uses authentication and authorization policies. Only users that have logged in, and that are the owner of a task or tasklist can update or delete the object.
Pundit is used to build the authorization policies.

I also build an API Client, using Ruby on Rails.
You can access the API Client on http://taskmanager-api-client.herokuapp.com
At the client side the following functions are developed
  - show all tasklist
  - show a tasklist with tasks
  - create tasklist
  - delete tasklist
  - create tasks
  - delete tasks

In order to use the other functions of the API it is possible to use curl and send requests via the command line. Because authentication is required (and authorization regarding update) I provide an user-token. You can find these curl commands in app/curl_commands.txt

******************************************************************************

Have a look at the API Client on http://taskmanager-api-client.herokuapp.com

*****************************************************************************
In case the server is not working, please download my code and run the app on local host by using the command 'rails s'. You can access than the app on localhost:3000
