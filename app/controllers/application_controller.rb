class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/foods" do
    foods = Food.all
    foods.to_json
  end

  get "/days" do
    days = Day.all
    days.to_json
  end

  get "/days_with_foods" do
    days = Day.all
    days.to_json(include: :foods)
  end

end
