require 'sinatra/base'
require 'erb'
require 'coffee-script'
require 'sass'

class MySinatraApp < Sinatra::Base
  
  set :root, File.dirname(__FILE__)
  
  #Needed for Coffeescript and SCSS
  get '/js/:script.js' do |script|
    coffee :"coffee/#{script}"
  end
  
  get '/css/:stylesheet.css' do |stylesheet|
    scss :"scss/#{stylesheet}"
  end

  #Starting actual application
  get '/' do
    erb :index
  end

end