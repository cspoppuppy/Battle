class Player
  DEFAULT_HP = 60
  attr_reader :name, :hp
  
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  # def attack
  #   10
  # end

  def damage#(points)
    @hp -= 10
  end
end