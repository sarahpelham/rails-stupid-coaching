class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "hello"
      @answer = "what's up"
    elsif @question == "what time is it?"
      @answer = Time.now.strftime("%I:%M%P")
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
