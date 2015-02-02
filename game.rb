require_relative 'player'
require_relative 'rps'

class Game
  def initalize
    @attacks = ["rock", "paper", "scissors"]
    @score = score
    @name = mame
  end
  
  attr_reader :player1, :player2
     
  def new_game
    until (player1.score - 2) == (player2.score) || (player2.score - 2) == (player1.score)
      puts "player1.name choose a weapon: Rock, Paper, or Scissors"
    attack1 = gets.chomp.downcase
      puts "player2.name choose a weapon: Rock, Paper, or Scissors"
    attack2 = gets.chomp.downcase
      if @attacks.include?(attack1) == false || @attacks.include?(attack2) == false
        puts "Illegal attack"
      elsif attack1 == attack2
        puts "Draw"
      elsif attack1 == "rock" && attack2 == "scissors" || attack1  == "paper" && attack2 == "rock" || attack1 == "scissors" && attack == "paper"
        puts "#{player1.name} Wins!"
        player1.add_score += 1
      else
        puts "#{player2.name} Wins!"
        player2.add_score += 1
     end
   end
   if (player1.score - 2) == (player2.score)
     puts "#{player1.name} wins the war!!"
   else
     puts "#{player2.name} wins the war!!"
   end
end


  #trying to come up with some sort of method to reference the rules.
  def rules
  end


end