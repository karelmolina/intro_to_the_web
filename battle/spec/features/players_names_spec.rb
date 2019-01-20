
feature 'player in the game' do
  scenario 'player introduce their names' do
      sign_in_and_play
      expect(page).to  have_content 'Karel vs Eduardo'
  end
end
