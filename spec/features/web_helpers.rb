def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'lastgreedymosquito'
  fill_in :player2_name, with: 'preciousflower'
  click_button('Submit')
end