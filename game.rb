require './player'

class Game

  attr_accessor :player1, :player2, :current_player, :winner

  def initialize
    self.player1 = Player.new("p1")
    self.player2 = Player.new("p2")
    self.current_player = player1;
    self.winner = nil
  end

  def game_over(winner)
    puts "#{winner.name} wins with a score of #{winner.number_of_lives}/3"
    puts " ---- GAME OVER ----"
    puts "Good bye!"
  end  

  def game_starts
    # inside a while loop
    while player1.number_of_lives > 0 && player2.number_of_lives > 0
      #Generation of random numbers & ask question
      num1 = rand(20) + 1
      num2 = rand(20) + 1
      correct_answer = num1 + num2
      puts "#{current_player.name}: what does #{num1} plus #{num2} equal?"
      #Capture user's input
      answer = gets.chomp.to_i
      if answer != correct_answer
        current_player.lose_life  
        puts "Seriously? No!"
        puts " P1: #{player1.number_of_lives}/3 vs P2: #{player2.number_of_lives}/3"
      end 
    
      self.current_player = self.current_player == player1 ?  player2 : player1
    
      
      puts " ---- NEW TURN ---- "
    end

    winner = player1.number_of_lives > 0 ? player1 : player2
    game_over(winner)

  end

end



