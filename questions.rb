# will manage questions and correct answer and show the player the questions

class Question
  attr_accessor :number1, :number2, :question, :answer

  #set initial values for the obj
  def initialize()
    @number1 = (rand(1..20)) #creates the random num between 1 and 20
    @number2 = (rand(1..20))
    @question = "What does #{@number1} plus #{@number2} equal?"
    @answer = number1 + number2
  end

  def answer
    @number1 + @number2
  end
end

