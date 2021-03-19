feature 'switch turns' do
  scenario 'player 1''s turn' do
    sign_in_and_play
    expect(page).to have_content "lastgreedymosquito's turn"
  end

  scenario 'player 2''s turn' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to_not have_content "lastgreedymosquito's turn"
    expect(page).to have_content "preciousflower's turn"
  end
end