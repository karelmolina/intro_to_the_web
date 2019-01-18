require 'sinatra'


get '/' do
  'Hello!'
end

get '/secret' do
  'this is a secret'
end

get '/cat' do
  '<div style="border: 2px dashed red">
      <img src="http://bit.ly/1eze8aE">
  </div>'
end
