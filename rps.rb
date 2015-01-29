puts "player 1, please choose a move:"
player1 = gets.chomp.downcase
puts "player 2, please choose a move:"
player2 = gets.chomp.downcase

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
  
  
#binding.pry