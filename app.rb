require 'sinatra'


get '/' do
  'Hello!'
end

get '/secret' do
  'this is a secret'
end
