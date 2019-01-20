
feature 'player in the game' do
  scenario 'player introduce their names' do
      visit('/')
      fill_in :player_1_name, with: 'Karel'
      fill_in :player_2_name, with: 'Eduardo'
      click_button 'submit'
      expect(page).to have_content 'Karel vs Eduardo'
  end
end
