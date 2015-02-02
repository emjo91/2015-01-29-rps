require 'pry'

#Methods aren't quite going according to plan...
class Player
  #will eventually hold an array of all the players....
  def initialize(name)
    @name = name
    @score = 0
  end 
  attr_accessor :name 

  def add_score
    @score =+ 1
  end
  
  def player1_show_score
    @player1
  end
  
end

binding.pry