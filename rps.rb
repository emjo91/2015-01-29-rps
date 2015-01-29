require 'pry'

class Players
  
  def initialize
    @players = []
  end
  
  def rules
  if player1 && player2 != "rock" || "paper" || "scissors"
    puts "Error!"
  else
    #Player 1 wins
    if player1 == "rock" && player2 == "scissors"
      puts "Player 1 wins!"
    elsif player1 == "paper" && player2 == "rock"
      puts "Player 1 wins!"
    elsif player1 == "scissors" && player == "paper"
      puts "Player 1 wins!"
    #Player 2 wins
    elsif player1 == "rock" && player2 == "paper"
      puts "Player 2 wins!"
    elsif player1 == "paper" && player2 == "scissors"
      puts "Player 2 wins!"
    elsif player1 == "scissors" && player2 == "rock"
      puts "Player 2 wins!"
    #No one wins
    elsif player1 == "rock" && player2 == "rock"
      puts "Tie..."
    elsif player1 == "paper" && player2 == "paper"
      puts "Tie..."
    elsif player1 == "scissors" && player2 == "scissors"
      puts "Tie..."
    end
  end
end
  
  def add_player(player)
    @players << player
    @players
  end

end
  
binding.pry