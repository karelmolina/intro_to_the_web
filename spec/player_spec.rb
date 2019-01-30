require 'player'

describe Player do
	subject(:karel) {Player.new('karel')}
	subject(:eduardo){Player.new('eduardo')}

	describe 'name' do
		it 'returns the player name' do
			expect(karel.name).to eq 'karel'
		end
	end

	describe 'hit points' do
		it 'returns the hit points left' do
			expect(karel.hit_points).to eq described_class::DEFAULT_HIT_POINTS
		end
	end

	describe 'attack' do
		it 'damages the player' do
			expect(eduardo).to receive(:receive_damage)
			karel.attack(eduardo)
		end
	end

	describe 'recive damage' do
		it 'reduice the player HP' do
			expect {karel.receive_damage}.to change {karel.hit_points}
		end
	end

end
