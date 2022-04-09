# start, manage turns, manage points, show who is winner

class Game

  attr_reader :playerid

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  #def correct
  #  player_response = question.answer
  #end

  def turn(question)
    puts "-------- NEW TURN ---------"
    puts "Player #{@current_player.playerid}: #{question.question}"
    answ = gets.chomp.to_i
    if answ == question.answer
      puts "Player #{@current_player.playerid}: YES! You are correct."
      puts "P1: #{@player1.score}/3 vs. P2: #{@player2.score}/3"
    else
      puts "Player #{@current_player.playerid}: Seriously? No!"
      @current_player.incorrect
      puts "P1: #{@player1.score}/3 vs. P2: #{@player2.score}/3"
    end
    switch_players
  end

  def switch_players
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def game_on?
    if @player1.still_alive? && @player2.still_alive?
      return true
    else
      return false
    end
  end

end