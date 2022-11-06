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

  get "/foods/:id" do
    food = Food.find(params[:id])
    food.to_json
  end

  get "/days" do
    days = Day.all
    days.to_json
  end

  get "/days/:id" do
    day = Day.find(params[:id])
    day.to_json
  end

  get "/days_with_foods" do
    days = Day.all
    days.to_json(include: :foods)
  end

  delete '/days/:id' do
    day = Day.find(params[:id])
    day.destroy
    day.to_json
  end

  delete '/foods/:id' do
    food = Food.find(params[:id])
    food.destroy
    food.to_json
  end

  post '/days' do
    day = Day.create(
      date: params[:date]
    )
    day.to_json
  end

  post '/foods' do
    food = Food.create(
      name: params[:name],
      calories: params[:calories],
      fat: params[:fat],
      fiber: params[:fiber],
      day_id: params[:day_id]
    )
    food.to_json
  end

  patch '/days/:id' do
    day = Day.find(params[:id])
    day.update(
      date: params[:date]
    )
    day.to_json
  end

  patch '/foods/:id' do
    food = Food.find(params[:id])
    food.update(
      name: params[:name],
      calories: params[:calories],
      fat: params[:fat],
      fiber: params[:fiber],
      day_id: params[:day_id]
    )
    food.to_json
  end

end
