require 'rubygems'
require 'sinatra'


configure(:development) do |c|
  require "sinatra/reloader"
  c.also_reload "*.rb"
end

get '/' do

  name = params[:name]
  
  if (name)
    'Hello ' + name.capitalize + '! Try "/test"'
  else
    'Hello World!' 
  end
 
end

get '/test' do 
  
  name = params[:name]
  
  if (name)
    @my_var = 'Hello ' + name.capitalize + '. This is nice :)'
  else
    @my_var = 'Hello World! This is nice :)' 
  end

  erb :index
  
end
