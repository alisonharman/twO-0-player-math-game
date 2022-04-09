# main file for our game ... requires the other files
require './questions'
require './game'
require './players'

# create players
player1 = Player.new("Alison")
player2 = Player.new("Shaun")

#to start a new game
game = Game.new(player1, player2)


while game.game_on? do

  #create new question and display
  question = Question.new
  puts question.question
  #display answer
  puts question.answer
  
  player1.incorrect #to avoid an infinite loop
end
