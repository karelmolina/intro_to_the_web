
feature 'show player 2 HP' do
  scenario 'as player 1 see the hp of player 2' do
    visit('/')
    fill_in 'player_1_name', with: 'Karel'
    fill_in 'player_2_name', with: 'Eduardo'
    click_on 'submit'
    expect(page).to have_content 'Eduardo: 100 HP'
  end
end
