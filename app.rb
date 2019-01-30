require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
#control class
class Battle < Sinatra::Base

		get '/' do
		erb :index
	end
#post method for register the players names
	post '/names' do
		player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
		redirect '/play'
	end
#this method has the view for the game
	get '/play' do
		@game = $game
		erb :play
	end
#post method that control the end_game
	post '/attack' do
		$game.attack($game.opponent_of($game.current_turn))
		if $game.game_finished?
			redirect '/game_over'
		else
			redirect '/attack'
		end
	end
#contains the view for the action executed
	get '/attack' do
		@game = $game
		erb :attack
	end
#post method to do the turns switch
	post '/switch_turns' do
		@game = $game
		@game.switch_turns
		redirect '/play'
	end

#The Game Ends
	get '/game_over' do
		@game = $game
		erb :game_over
	end

#supposed to start the server just for running the file with ruby command
	run if app_file == $0

end
