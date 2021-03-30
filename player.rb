class Player

  attr_accessor :name, :number_of_lives

  def initialize(n)
    self.name = n
    self.number_of_lives = 3
  end

  def lose_life
    self.number_of_lives -= 1
  end 

end

# player1 = Player.new("Rona")
# puts player1.name
# puts player1.number_of_lives
# player1.lose_life
# puts player1.number_of_lives