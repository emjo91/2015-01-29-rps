require 'pry'
require_relative 'rps'
#require_relative 'game'

class Player
  def initialize(name)
    @name = name
    @score = 0
  end 
  attr_accessor :name, :score

  def add_score
    @score += 1
  end
end

binding.pry