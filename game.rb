# start, manage turns, manage points, show who is winner

class Game

  attr_reader :playerid

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def game_on?
    if @player1.still_alive? && @player2.still_alive?
      return true
    else
      return false
    end
  end

end