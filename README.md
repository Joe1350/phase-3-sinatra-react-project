# Calorie Tracker

Calorie Tracker is a web application to track daily calories, fat, and fiber, and tells you how many weight watcher points each food item is. This project uses the original weight watchers point system:

(calories / 50) + (fat / 12) - (fiber / 12) = original WW points

## Instalation

In order to view this project fork and clone the repository.
Run `bundle install`
Then `bundle exec rake db:migrate db:seed` to migrate and populate the database.
Or run `bundle exec rake db:migrate` to migrate the database and you can add your own data.
Run `bundle exec rake server` to host the server at port 9292.

## Usage

Once the server is running, open a browser, and got to http://localhost:9292/

The endpoints are as follows:

GET
/days_with_foods -- gets a nested list of days with foods

POST
/days_with_foods -- allows you to post a new day
/days_with_foods/:id/foods -- allows you to post a new food to a day

PATCH
/foods/:id -- allows you to update a food by ID
/days/:id -- allows you to update a day by ID

DELETE
/foods/:id -- allows you to delete a food by ID
/days/:id -- allows you to delete a day by ID. note: will delete all food associated with that day

## support

There is currently no support.

## Roadmap

Currently there are no future plans

## Contributing

I am not currently looking for contributors

## Acknowledgement

The seed data for this project was gathered from McDonalds Nutritional Calculator.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Project Status

Currently on hold.
