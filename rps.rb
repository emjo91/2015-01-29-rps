require 'pry'
require_relative 'player'
require_relative 'game'

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




# Class: Driver
#
# Right now, it contains a rock paper scissors game, and people who play it!
# I do realize this is a mess. It's a WIP.
#
# Attributes:
# @none - None so far. This is one big monster mess of a method.
#
# Public Methods:
# driver
  

class Driver
  
  #figuring out HOW to get my arrays into this hash :s 
  #I don't think I'll be needing this method. Putting into
  def initalize
    # @players_and_score = {}
    # @player1_score
    # @player2_score
  end

  
  def get_info
    #Getting player info - Separate method later?
    puts "Player 1, what is your name?"
    name1 = gets.chomp.capitalize
    player1 = Player.new(name1)
    @players << player1
    puts "Player 2 what is your name?"
    name2 = gets.chomp.capitalize
    player2 = Player.new(name2)
    @players << player2

    puts "#{player1} and #{player2} are you ready for Rock, Paper, Scissors?!?"
    puts
  end
  
  #info to come here...
  def start_game
  end
  #trying to create more methods...not working...works if these aren't in method...
  #Putting this method into a player class.
  # def add_score(someones_score)
  #   someones_score += 1
  # end

end
  

#binding.pry