require 'pry'

#Methods aren't quite going according to plan...
class Player
  #will eventually hold an array of all the players....
  def initialize
    @players = []
    @player1_score = 0
    @player2_score = 0
  end 
  #attr_accessor :players

  def add_player(name)
    @players << name
  end

  def add_score(someones_score)
    someones_score =+ 1
  end
  
  def player1_show_score
    @player1
  end
  
  def player2_show_score
    @player2
  end
  
  def show_players
    @players
  end
  
end

binding.pry