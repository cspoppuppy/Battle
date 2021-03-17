feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'lastgreedymosquito attacked preciousflower'
  end

  scenario 'reduce Player2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to_not have_content 'preciousflower: 60HP'
    expect(page).to have_content 'preciousflower: 50HP'
  end
end