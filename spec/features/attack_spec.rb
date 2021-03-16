feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'player1 attacked player2'
  end
end