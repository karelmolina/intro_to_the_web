
feature 'attack' do
		scenario 'attacking the player 2' do
			sign_in_and_play
			attacking
			expect(page).not_to have_content 'Eduardo 40 HP'
		end

		scenario 'attack from player_2' do
			sign_in_and_play
			attacking
			expect(page).not_to have_content "Karel's Turns"
			expect(page).to have_content "Eduardo's Turns"
		end

		scenario 'player 2 can reduce hp of player 1'do
			sign_in_and_play
			attacking
			attacking
			expect(page).not_to have_content 'karel: 40 hp'
		end
end
