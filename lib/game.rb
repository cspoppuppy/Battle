class Game
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = @player1
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def attack(victim)
    victim.damage
    switch_turn
  end

  def turn
    @turn
  end

  def switch_turn
    @turn = (@turn == @player1 ? @player2 : @player1)
  end

  def victim
    @turn == @player1 ? @player2 : @player1
  end
end