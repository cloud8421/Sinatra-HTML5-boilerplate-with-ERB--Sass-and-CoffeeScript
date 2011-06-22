require 'sinatra/base'
require 'erb'
require 'coffee-script'
require 'sass'

class MySinatraApp < Sinatra::Base
  
  set :root, File.dirname(__FILE__)
  
  #Needed for Coffeescript and SCSS
  get '/js/script.js' do
    coffee :application
  end
  
  get '/css/application.css' do
    scss :application
  end

  #Starting actual application
  get '/' do
    erb :index
  end

end