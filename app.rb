require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

## Acts as controller and router together

# Action
get "/" do
    # Homepage
    erb :index
end
