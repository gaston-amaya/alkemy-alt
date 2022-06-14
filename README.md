# alkemy alternative challange
what i have done:
- added all tables and associations, displaying the info as requested
- added CRUD for all controllers
- added login and register so that only registered & logged in users can access the info in the controllers
- added basic validations like -unique name and checking empty fields
- when an user registers a welcome email gets sent to their registered address

what im missing:
- flash messages not working right now so i cant display success and specific error messages
- endpoint documentation + tests
- more validations & query filters   



Content of this project:

- Login & Register with devise-jwt gem

- Welcome email after registering done with Action Mailer

- SQLite, has many/belongs to/many through associations

- Filter what information is displayed in GET requests with Active Model Serializer gem

- Model validations: presence, uniqueness, length, specific characters
