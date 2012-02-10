require 'rubygems'
require 'bundler/setup'
Bundler.require :default


# class MyApp < Sinatra::Base

  configure(:development) do
    require "sinatra/reloader"
    also_reload '*.rb'
  end

  before do
    puts 'before filter'
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
# end