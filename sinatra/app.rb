require 'sinatra'

get '/' do
	'hello world!'
end

get '/secret' do
	'this is the secret'
end

get '/cat' do
	@names = ["Amigo", "Oscar", "Viking"].sample
	erb(:index)
end
