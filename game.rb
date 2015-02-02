require_relative 'player'
require_relative 'rps'

class Game
  def initalize
    @player1 = player1
    @player2 = player2
  end
  
  
  
  def begin_game
    until (player1.score - 2) == (player2.score) || (player2.score - 2) == (player1.score)
      #Getting move info - Separate method later?
      #attacks = []
      puts "#{player1}: rock, paper or scissors?"
      attack1 = gets.chomp.downcase
      puts "#{player2}: rock, paper or scissors?"
      attack2 = gets.chomp.downcase
    #Player 1 wins
    if attack1 == "rock" && attack2 == "scissors"
      add_score(player1.add_score)
      puts "#{player1} wins the battle!"
      puts
    elsif attack1 == "paper" && attack2 == "rock"
      add_score(player1.add_score)
      puts "#{player1} wins the battle!"
      puts
    elsif attack1 == "scisscors" && attack2 == "paper"
      add_score(player1.add_score)
      puts "#{player1} wins! the battle"
      puts
    #No winners
    elsif attack1 == "rock" && attack2 == "rock"
      puts "Draw"
      puts
    elsif attack1 == "paper" && attack2 == "paper"
      puts "Draw"
      puts
    elsif attack1 == "scissors" && attack2 == "scissors"
      puts "Draw"
      puts
    #Player 2 wins
    elsif attack1 == "rock" && attack2 == "paper"
      add_score(player2.add_score)
      puts "#{player2} wins the battle!"
      puts
    elsif attack1 == "paper" && attack2 == "scissors"
      add_score(player2.add_score)
      puts "#{player2} wins the battle!"
      puts
    elsif attack1 == "scissors the battle!" && attack2 == "rock"
      add_score(player2.add_score)
      puts "#{player2} wins!"
      puts
    else 
      puts "Not an option..."
    end
    
    # def new_game
    #   until (player1.score - 2) == (player2.score) || (player2.score - 2) == (player1.score)
    #   puts "#{player1} choose a weapon: Rock, Paper, or Scissors"
    #   attack1 = gets.chomp.downcase
    #   puts "#{player2} choose a weapon: Rock, Paper, or Scissors"
    #   attack2 = gets.chomp.downcase
    #     if attacks.include?(attack1) == false || attacks.include?(attack2) == false
    #       puts "Illegal attack"
    #     elsif attack1 == attack2
    #       puts "Draw"
    #     elsif attack1 == "rock" && attack2 == "scissors" || attack1  == "paper" && attack2 == "rock" || attack1 == "scissors" && attack == "paper"
    #       puts "#{player1} Wins!"
    #       player1.score += 1
    #     else
    #       puts "#{player2} Wins!"
    #       player2.score += 1
    #     end
    #   end
  end
end

  #trying to come up with some sort of method to reference the rules.
  def rules
  end

  if (@player1_score - 2) == (@player2_score)
    puts "#{player1} wins the war!!"
  else
    puts "#{player2} wins the war!!"
  end
end