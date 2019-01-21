require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
class Battle < Sinatra::Base

		get '/' do
		erb :index
	end

	post '/names' do
		player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
		redirect '/play'
	end

	get '/play' do
		@game = $game
		erb :play
	end

	get '/attack' do
		@game = $game
		@game.attack(@game.opponent_of(@game.current_turn))
		erb :attack
	end

	post '/switch_turns' do
		@game = $game
		@game.switch_turns
		redirect '/play'
	end


	run if app_file == $0

end
