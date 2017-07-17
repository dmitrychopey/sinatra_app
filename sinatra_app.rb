require 'sinatra/base'
require 'sinatra/json'
require 'json'

Dotenv.load

class SinatraApp < Sinatra::Base

  get "/" do
    erb :index
  end
end
