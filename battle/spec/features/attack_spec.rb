
feature 'attack' do
	scenario 'attacking the player 2' do
		sign_in_and_play
		#click_button 'attack'
		click_link 'Attack'
		expect(page).not_to have_content 'Eduardo 100 HP'
		expect(page).to have_content 'Eduardo: 90 HP'
	end

end
