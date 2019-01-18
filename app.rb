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

get '/named-cat'do
  @name = [param:name]
  erb(:index)
end
