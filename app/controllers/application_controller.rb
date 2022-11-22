class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    "
    GET
    /days -- gets a nested list of days with foods
    
    POST
    /days -- allows you to post a new day
    /days/:id/foods -- allows you to post a new food to a day
    
    PATCH
    /days/:id -- allows you to update a day by ID
    /foods/:id -- allows you to update a food by ID
    
    DELETE
    /foods/:id -- allows you to delete a food by ID
    /days/:id -- allows you to delete a day by ID. note: will delete all food associated with that day"
  end

  # get all days with nested foods
  get "/days" do
    days = Day.all
    days.to_json(include: :foods)
  end

  # create day with empty food array
  post '/days' do
    day = Day.create(
      date: params[:date],
      foods: params[:foods],
    )
    day.to_json(include: :foods)
  end

  # find day with nested foods by id and create new food
  post '/day/:id/foods' do
    day = Day.find(params[:id])
    food = day.foods.create!(
      name: params[:name],
      calories: params[:calories],
      fat: params[:fat],
      fiber: params[:fiber],
      day_id: params[:day_id],
    )
    {}.to_json(include: :foods)
  end

  # update day by id
  patch '/days/:id' do
    day = Day.find(params[:id])
    day.update(
      date: params[:date],
    )
    day.to_json(include: :foods)
  end

  # update food by id
  patch '/foods/:id' do
    food = Food.find(params[:id])
    food.update(
      name: params[:name],
      calories: params[:calories],
      fat: params[:fat],
      fiber: params[:fiber],
      day_id: params[:day_id],
    )
    food.to_json
  end

  # delete day by id
  delete '/days/:id' do
    day = Day.find(params[:id])
    day.destroy
    day.to_json # tried removing this line, but then it wouldn't delete
  end

  # delete food by id
  delete '/foods/:id' do
    food = Food.find(params[:id])
    food.destroy
    food.to_json # tried removing this line, but then it wouldn't delete
  end



  # unused routes for potential use



  # # get all foods
  # get "/foods" do
  #   foods = Food.all
  #   foods.to_json
  # end

  # # get one food
  # get "/foods/:id" do
  #   food = Food.find(params[:id])
  #   food.to_json
  # end

  # get all days
  # get "/days" do
  #   days = Day.all
  #   days.to_json
  # end

  # # get one day
  # get "/days/:id" do
  #   day = Day.find(params[:id])
  #   day.to_json
  # end

  # # get one day with nested foods
  # get "/days_with_foods/:id" do
  #   day = Day.find(params[:id])
  #   day.to_json(include: :foods)
  # end

  # # get last seven days
  # get "/days_last_seven" do
  #   week = Day.last(7)
  #   week.to_json
  # end

  # # get last seven days with nested food
  # get "/days_last_seven_with_foods" do
  #   week = Day.last(7)
  #   week.to_json(include: :foods)
  # end

  # # create day
  # post '/days' do
  #   day = Day.create(
  #     date: params[:date]
  #   )
  #   day.to_json
  # end

  # # create food
  # post '/foods' do
  #   food = Food.create(
  #     name: params[:name],
  #     calories: params[:calories],
  #     fat: params[:fat],
  #     fiber: params[:fiber],
  #     day_id: params[:day_id],
  #   )
  #   food.to_json
  # end

  # # delete food from a day
  # delete '/days_with_foods/:day_id/foods/:food_id' do
  #   day = Day.find(params[:day_id])
  #   food = day.foods.find(params[:food_id])
  #   food.destroy
  # end

  # broken / maybe fixed / untested
  # # find day by id and update foods array
  # patch '/days_with_foods/:day_id/foods/:food_id' do
  #   day = Day.find(params[:day_id])
  #   food = day.foods.find(params:[:food_id])
  #   food.update(params[:food])
  #   {}.to_json(include: :foods)
  # end

end
