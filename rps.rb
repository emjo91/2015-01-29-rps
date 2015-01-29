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

    attacks.inspect
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
  
binding.pry