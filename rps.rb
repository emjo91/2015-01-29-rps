require 'pry'

# Level 0 is where we get things working at their most basic level.
#
# DONE1.Basic rock-paper-scissors game (no custom objects). Output should be sensibly formatted.
# Should only accept valid moves. Players only need to play a single round.
#
# ALMOST DONE2.Player classes + overall driver method. Driver method should create players,
# tell the players to prompt for moves, and determine the winner. Players should
# keep track of their names and moves, and should still only accept valid moves.
# From the user’s perspective, the game should appear to work exactly the same.
#
# DONE3.Players should be able to play a best-of-n match, which will require you to keep
# track of each player’s score.
#
# 4.Go back and provide method documentation for all of your classes and custom-written methods.
# If you wrote the class (or method), you gotta document it.




# Class: Players
#
# Right now, it contains a rock paper scissors game, and people who play it!
# I do realize this is a mess. It's a WIP.
#
# Attributes:
# @none - None so far. This is one big monster mess of a method.
#
# Public Methods:
# driver

class Players
  
  # Public: #diver
  # It does it ALL right now...
  #
  # Parameters:
  # None yet - None yet.
  #
  # Returns:
  # Returns a winner
  #
  # State Changes:
  # Sets winning_player and losing_player.
  
  #def driver
    #figuring out HOW to get my arrays into this hash :s 
    players_and_moves = {}
    
    #Using if, elsif, and else blocks, write a program which allows two users to each input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).

    #Getting player info - Separate method later?
    players = []
    puts "Player 1, what is your name?"
    player1 = gets.chomp.capitalize
    players << player1
    puts "Player 2 what is your name?"
    player2 = gets.chomp.capitalize
    players << player2

    puts "#{player1} and #{player2} are you ready for Rock, Paper, Scissors?!?"
    puts

    player1_score = 0
    player2_score = 0

    until (player1_score - 2) == (player2_score) || (player2_score - 2) == (player1_score)
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
        player1_score += 1
        puts "#{player1} wins!"
        puts
      elsif attack1 == "paper" && attack2 == "rock"
        player1_score += 1
        puts "#{player1} wins!"
        puts
      elsif attack1 == "scisscors" && attack2 == "paper"
        player1_score += 1
        puts "#{player1} wins!"
        puts
      #No winners
      elsif attack1 == "rock" && attack2 == "rock"
        puts "No one wins"
        puts
      elsif attack1 == "paper" && attack2 == "paper"
        puts "No one wins"
        puts
      elsif attack1 == "scissors" && attack2 == "scissors"
        puts "No one wins!"
        puts
      #Player 2 wins
      elsif attack1 == "rock" && attack2 == "paper"
        player2_score += 1
        puts "#{player2} wins"
        puts
      elsif attack1 == "paper" && attack2 == "scissors"
        player2_score += 1
        puts "#{player2} wins"
        puts
      elsif attack1 == "scissors" && attack2 == "rock"
        player2_score += 1
        puts "#{player2} wins!"
        puts
      else 
        puts "Not an option..."
      end
    end

    if (player1_score - 2) == (player2_score)
      puts "#{player1} wins the war!!"
    else
      puts "#{player2} wins the war!!"
    end
  #end
end
  

#binding.pry