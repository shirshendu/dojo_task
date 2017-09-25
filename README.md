# README

* Ruby version
2.3.1

* Database creation
`bundle exec rake db:create`

* Database initialization
`bundle exec rake db:migrate`
`bundle exec rake heros:import_all`

* Try it out:
- `bundle exec rails s`
- The server in development mode is available at `http://localhost:3000/`

- The API endpoints are all under `/api`
- `/api/heros`
- `/api/heros/:id`
- `/api/heros/:id/abilities`
- `/api/abilities`
- `/api/abilities/:id`
