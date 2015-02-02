require_relative 'player'

class Game
  @player1 = player1
  @player2 = player2
  
  until (@player1_score - 2) == (@player2_score) || (@player2_score - 2) == (@player1_score)
    #Getting move info - Separate method later?
    attacks = []
    puts "#{player1} what is your move?"
    attack1 = gets.chomp.downcase
    attacks << attack1 
    puts "#{player2} what is your move?"
    attack2 = gets.chomp.downcase
    attacks << attack2
  #Player 1 wins
  if attack1 == "rock" && attack2 == "scissors"
    add_score(player1.score)
    puts "#{player1} wins the battle!"
    puts
  elsif attack1 == "paper" && attack2 == "rock"
    add_score(player1.score)
    puts "#{player1} wins the battle!"
    puts
  elsif attack1 == "scisscors" && attack2 == "paper"
    add_score(player1.score)
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
    add_score(player2.score)
    puts "#{player2} wins the battle!"
    puts
  elsif attack1 == "paper" && attack2 == "scissors"
    add_score(player2.score)
    puts "#{player2} wins the battle!"
    puts
  elsif attack1 == "scissors the battle!" && attack2 == "rock"
    add_score(player2.score)
    puts "#{player2} wins!"
    puts
  else 
    puts "Not an option..."
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