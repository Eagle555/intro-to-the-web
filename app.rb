require "bundler/setup"
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "secret"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/cat_form'do
  erb(:cat_form)
end

post '/named-cat'do
  p params
  @name = params[:name]
  @color = params[:color]
  erb(:index)
end