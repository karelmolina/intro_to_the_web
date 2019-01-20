require 'player'

describe 'player' do
	subject(:karel) {Player.new('karel')}
	describe 'name' do
		it 'returns the player name' do
			expect(karel.name).to eq 'karel'
		end
	end
end
