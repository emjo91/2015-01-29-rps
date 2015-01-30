require 'pry'

# Level 0 is where we get things working at their most basic level.
#
# 1.Basic rock-paper-scissors game (no custom objects). Output should be sensibly formatted.
# Should only accept valid moves. Players only need to play a single round.
#
# 2.Player classes + overall driver method. Driver method should create players,
# tell the players to prompt for moves, and determine the winner. Players should
# keep track of their names and moves, and should still only accept valid moves.
# From the user’s perspective, the game should appear to work exactly the same.
#
# 3.Players should be able to play a best-of-n match, which will require you to keep
# track of each player’s score.
#
# 4.Go back and provide method documentation for all of your classes and custom-written methods.
# If you wrote the class (or method), you gotta document it.

class Players
  
  #def players_moves
    players = []
    puts "Player 1, what is your name?"
    player1 = gets.chomp.capitalize
    players << player1
    puts "Player 2 what is your name?"
    player2 = gets.chomp.capitalize
    players << player2

    puts "#{player1} and #{player2} are you ready for Rock, Paper, Scissors?!?"
    puts

    attacks = []
    puts "#{player1} what is your move?"
    attack1 = gets.chomp.downcase
    attacks << attack1 
    puts "#{player2} what is your move?"
    attack2 = gets.chomp.downcase
    attacks << attack2
      
    if attack1 != "rock" && attack1 != "paper" && attack1 != "scissors"
      puts "Error!"
    elsif attack2 != "rock" && attack2 != "paper" && attack2 != "scissors"
      puts "Error2!"
    else
      puts "correct move choices!"
    end
    #Player 1 wins
    if attack1 == "rock" && attack2 == "scissors"
      puts "Player 1 wins!"
    elsif attack1 == "paper" && attack2 == "rock"
      puts "Player 1 wins!"
    elsif attack1 == "scissors" && attack2 == "paper"
      puts "Player 1 wins!"
    #Player 2 wins
    elsif attack1 == "rock" && attack2 == "paper"
      puts "Player 2 wins!"
    elsif attack1 == "paper" && attack2 == "scissors"
      puts "Player 2 wins!"
    elsif attack1 == "scissors" && attack2 == "rock"
      puts "Player 2 wins!"
    #No one wins
    elsif attack1 == "rock" && attack2 == "rock"
      puts "Tie..."
    elsif attack1 == "paper" && attack2 == "paper"
      puts "Tie..."
    elsif attack1 == "scissors" && attack2 == "scissors"
      puts "Tie..."
    end
      #end
end
  

#binding.pry