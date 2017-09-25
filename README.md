# README

## Ruby version
- 2.3.1

## Installation
- `bundle install`

## Database creation
- `bundle exec rake db:create`

## Database initialization
- `bundle exec rake db:migrate`
- `bundle exec rake heros:import_all`

## Try it out:
- `bundle exec rails s`
- The server in development mode is available at `http://localhost:3000/`

## The API endpoints are all under `/api`
- `/api/heros`
- `/api/heros/:id`
- `/api/heros/:id/abilities`
- `/api/abilities`
- `/api/abilities/:id`

## Known Issues
- ActiveAdmin doesn't work out of the box because the app was initialized as an API only app, and hence does not have a functional asset pipeline. It would be straightforward to add it in if the app were initialized as a default rails app.
- Some characters (such as apostrophes) face an encoding issue in the final API render. Possibly a minor issue with the json API gem's integration; the database, however, contains the correct characters, meaning there is no issue with the import of data.
