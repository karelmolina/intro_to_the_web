
feature 'End Game' do
  context 'when player 1 gets 0 hp' do
    before do
   sign_in_and_play
   attacking
   allow(Kernel).to receive(:rand).and_return(60)
 end

 scenario 'Player 1 loses' do
   click_button 'Attack'
   expect(page).to have_content 'Karel loses!'
 end
  end
end
