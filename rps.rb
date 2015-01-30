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

class Players
  
  def driver
    #figuring out HOW to get my arrays into this hash :s 
    players_and_moves = {}
    
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
    
    #Getting move info - Separate method later?
    attacks = []
    puts "#{player1} what is your move?"
    attack1 = gets.chomp.downcase
    attacks << attack1 
    puts "#{player2} what is your move?"
    attack2 = gets.chomp.downcase
    attacks << attack2
    
    #variables for keeping score...
    player1_score = 0
    player2_score = 0
      
    #Rules are here - These will probably be good as separate methods later...  
    if attack1 != "rock" && attack1 != "paper" && attack1 != "scissors"
      puts "That's not even a real move!"
    elsif attack2 != "rock" && attack2 != "paper" && attack2 != "scissors"
      puts "Let's pick real moves...!"
    end 
    
    #First non looping initial game....
    #Player 1 wins
    if attack1 == "rock" && attack2 == "scissors"
      player1_score += 1
      puts "Player 1 wins!"
      puts
    elsif attack1 == "paper" && attack2 == "rock"
      player1_score += 1
      puts "Player 1 wins!"
      puts
    elsif attack1 == "scisscors" && attack2 == "paper"
      player1_score += 1
      puts "Player 1 wins!"
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
      puts "Player 2 wins"
      puts
    elsif attack1 == "paper" && attack2 == "scissors"
      player2_score += 1
      puts "Player 2 wins"
      puts
    elsif attack1 == "scissors" && attack2 == "rock"
      player2_score += 1
      puts "Player 2 wins!"
      puts
    end
    
    #Realizing I DEFINITELY need a method for this game...irk...
    until (player1_score - 1) == (player2_score) || (player2_score - 1) == (player1_score)
      puts "#{player1}: Choose rock, paper or scissors."
      player1 = gets.chomp
      puts "#{player2}: Choose rock, paper or scissors."
      player2 = gets.chomp
      #Player 1 wins
      if attack1 == "rock" && attack2 == "scissors"
        player1_score += 1
        puts "Player 1 wins!"
        puts
      elsif attack1 == "paper" && attack2 == "rock"
        player1_score += 1
        puts "Player 1 wins!"
        puts
      elsif attack1 == "scisscors" && attack2 == "paper"
        player1_score += 1
        puts "Player 1 wins!"
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
        puts "Player 2 wins"
        puts
      elsif attack1 == "paper" && attack2 == "scissors"
        player2_score += 1
        puts "Player 2 wins"
        puts
      elsif attack1 == "scissors" && attack2 == "rock"
        player2_score += 1
        puts "Player 2 wins!"
        puts
      else 
        puts "Not an option..."
      end
    end

    if (player1_score - 1) == (player2_score)
      puts "Player 1 wins the war!!"
    else
      puts "Player 2 wins the war!!"
    end
    
  end
end
  

#binding.pry