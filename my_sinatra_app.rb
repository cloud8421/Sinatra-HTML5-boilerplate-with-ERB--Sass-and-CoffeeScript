require 'sinatra'
require 'erb'

class MySinatraApp < Sinatra::Base

  get '/' do
    erb :index
  end

end