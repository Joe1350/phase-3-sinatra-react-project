# Calorie Tracker

Calorie Tracker is a web application to track daily calories, fat, and fiber, and tells you how many weight watcher points each food item is. This project uses the original weight watchers point system:

(calories / 50) + (fat / 12) - (fiber / 12) = original WW points

## Instalation

In order to view this project fork and clone the repository.
Run <bundle install> and <bundle exec rake db:migrate db:seed> to download and populate the database.
Run <bundle exec rake server> to host the server at port 9292.

## Usage

once the server is running, open a browser, and got to http://localhost:9292/

The endpoints are as follows:

/days
will return all days

/foods
will show all food items

/days/:id
will show one day

/foods/:id
will show one food item

/days/with_foods
will show all of the days with each days food items nested into that day

/days/last_seven
will show the most recent seven days

/days/last_seven/with_foods
will show the last seven days with nested food data

## Contributing

I am not currently looking for contributors

## License

[MIT](https://choosealicense.com/licenses/mit/)
