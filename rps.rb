require 'pry'

class Players
  
  def players_moves
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
      
     if attack1 && attack2 != "rock" || "paper" || "scissors"
      puts "Error!"
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
    end
end
  
#binding.pry