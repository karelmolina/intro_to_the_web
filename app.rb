require 'sinatra'


get '/' do
  'Hello!'
end

get '/secret' do
  'this is a secret'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
