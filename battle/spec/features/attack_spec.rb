
feature 'attack' do
	scenario 'attacking the player 2' do
		sign_in_and_play
		click_button 'Attack'
		click_button 'OK'
		expect(page).not_to have_content 'Eduardo 40 HP'
		expect(page).to have_content 'Eduardo: 30 HP'
	end

	scenario 'attack from player_2' do
		sign_in_and_play
		click_button 'Attack'
		click_button 'OK'
		expect(page).not_to have_content "Karel's Turns"
		expect(page).to have_content "Eduardo's Turns"
	end

end
