# myapp.rb
require 'sinatra'
require "sinatra/reloader"
require 'slim'

get '/' do
  slim :index
end

get '/hello/:name' do
  "Hello #{params[:name]}"
end

get '/test/*.*' do
  params[:splat]
end

get /\A\/morning\/(.+)\z/ do |c|
  "good morning, #{c}!"
end

get "/mypage" do
  "your page"
end

get "/hello/:fname/?:lname?" do |f,l|
  "hello #{f} #{l}"
end