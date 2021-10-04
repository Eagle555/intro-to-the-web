require "bundler/setup"
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "secret"
end

get '/cat' do
  erb(:index)
end
