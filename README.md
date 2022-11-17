# Calorie Tracker

Calorie Tracker is a web application to track daily calories, fat, and fiber, and tells you how many weight watcher points each food item is. This project uses the original weight watchers point system:

(calories / 50) + (fat / 12) - (fiber / 12) = original WW points

## Instalation

In order to view this project fork and clone the repository.
Run <bundle install> and <bundle exec rake db:migrate db:seed> to download and populate the database.
Run <bundle exec rake server> to host the server at port 9292.

## Usage

Once the server is running, open a browser, and got to http://localhost:9292/

The endpoints are as follows:

/days
Will return all days

/foods
Will show all food items

/days/:id
Will show one day

/foods/:id
Will show one food item

/days/with_foods
Will show all of the days with each days food items nested into that day

/days/last_seven
Will show the most recent seven days

/days/last_seven/with_foods
Will show the last seven days with nested food data

## support

There is currently no support.

## Roadmap

I intend to include a way to update seed data as the database grows

## Contributing

I am not currently looking for contributors

## Acknowledgement

This project uses the original weight watchers point system to caluclate points.
The seed data for this project was gathered from McDonalds Nutritional Calculator.

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Project Status

Currently on hold.
