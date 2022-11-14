class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

    if params[:question].include? "?"
      @coachanswer = @answers[1]
    elsif params[:question].capitalize == "I am going to work"
      @coachanswer = @answers[0]
    else
      @coachanswer = @answers[2]
    end
  end
end
