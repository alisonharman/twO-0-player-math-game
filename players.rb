# manage players by keeping track of current players and determining if the player is alive based on score
class Player
  attr_reader :playerid, :score

  def initialize(playerid) #set initial values
    @playerid = playerid
    @score = 3
  end

  def incorrect #player loses point
    @score -= 1
  end

  def still_alive?
    @score > 0
  end
end