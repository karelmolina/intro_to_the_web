
feature 'show player 2 HP' do
  scenario 'see the hp of player 2' do
    sign_in_and_play
    expect(page).to have_content 'Eduardo: 40 HP'
  end
end
