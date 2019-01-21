
feature 'Switch turns' do
    context 'first player and show turn 'do
      scenario 'at the start of the game' do
          sign_in_and_play
          expect(page).to have_content "Karel's Turns"
      end
    end

    scenario 'after first attack'do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Karel's Turns"
      expect(page).to have_content "Eduardo's Turns"
    end
end
