# README

## ScreenGuardian

ScreenGuardian is an app that helps parents monitor and manage their children's screen time. With a built-in timer and activity log, parents can set limits on screen time and track the types of activities their children engage in. The app also offers personalized recommendations based on the latest research in child development.

## Ruby Version

This application requires Ruby version 3.1.3. You can check your version by running:

ruby -v

## System Dependencies

This application uses SQLite3 as the database. Make sure you have it installed on your system. You can check if it's installed by running:

sqlite3 --version

If it's not installed, you can download it from the official website.

## Configuration
There are no additional configuration steps required for this application.

## Database creation
To create the database, run the following command:

rails db:create

## Database initialization
To initialize the database, run the following command:

rails db:migrate
This will create the necessary tables in the database.

How to run the test suite
To run the test suite, you need to have the rspec-rails gem installed. You can run the tests by running the following command:

bundle exec rspec

This will run all the tests in the spec directory.

# Services

This application doesn't require any additional services to be running.

# Deployment instructions

This application can be deployed to any hosting service that supports Rails applications. Before deploying, make sure to set the RAILS_ENV environment variable to production. You can also precompile the assets by running:

rails assets:precompile

This will compile all the assets and create the necessary files in the public directory.

## License

This application is released under the MIT License. See LICENSE for details.
