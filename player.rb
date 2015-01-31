class Player
  #will eventually hold an array of all the players....
  def initialize(players)
    @players = []
    @player1_score = 0
    @player2_score = 0
  end 
end

#attr_accessor :players

def set_player (player)
  @players = player
end

def get_player
  @players
end

def add_score
  score =+ 1
end
