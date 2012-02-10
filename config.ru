require 'template'

configure(:development) do |c|
  require "sinatra/reloader"
  c.also_reload "*.rb"
  c.also_reload "*.ru"
end

run Sinatra::Application
