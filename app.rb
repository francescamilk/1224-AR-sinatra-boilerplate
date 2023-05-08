require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"


## Acts as controller and router together

# Action
# 'localhost:4567/'
get "/" do
    # Homepage
    @restaurants = Restaurant.all
    erb :index
end

# 'localhost:4567/restaurants'
# get "/restaurants" do
#     # fetch all the restaurants from the DB
#     @restaurants = Restaurant.all
#     # pass the them to the View - erb file
#     erb :index
# end

# 'localhost:4567/restaurants/1'
# 'localhost:4567/restaurants/2'
get "/restaurants/:id" do
    # find the restaurant from the id in the URL
    @restaurant = Restaurant.find(params[:id])
    # pass it to the View
    erb :show
end

# 'localhost:4567/test'
get "/test" do
    erb :test
end