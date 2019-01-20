
def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Karel'
  fill_in 'player_2_name', with: 'Eduardo'
  click_on 'submit'
end
