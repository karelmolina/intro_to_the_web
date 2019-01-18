require 'sinatra'


get '/' do
  'Hello!'
end

get '/secret' do
  'this is a secret'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat'do
  @name = params[:name]
  erb(:index)
end

get '/cat-naming'  do
  erb (:cat_naming)
end
