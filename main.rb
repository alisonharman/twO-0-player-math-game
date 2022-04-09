# main file for our game ... requires the other files
require './questions'
require './game'
require './players'

# create players
player1 = Player.new("1")
player2 = Player.new("2")

#to start a new game
game = Game.new(player1, player2)

while game.game_on? do

  #create new question and display
  question = Question.new
  
  game.turn(question)
end
