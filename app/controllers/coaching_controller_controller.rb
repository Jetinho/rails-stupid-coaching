class CoachingControllerController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

    # if params[:query].downcase == "i am going to work right now!"
    #   return "Great kid"
    # elsif (params[:query].include? "?") && (params[:query] == params[:query].upcase)
    #   return "I can feel your motivation!" + " Silly question, get dressed and go to work!"
    # elsif params[:query] == params[:query].upcase
    #   return "I can feel your motivation!" + " I don't care, get dressed and go to work!"
    # elsif params[:query].include? "?"
    #   return "Silly question, get dressed and go to work!"
    # else
    #   return "I don't care, get dressed and go to work!"
    # end

  private

  def coach_answer(question)
    if question.downcase == "i am going to work right now!"
      return "Great kid"
    elsif (question.include? "?") && (question == question.upcase)
      return "I can feel your motivation!" + " Silly question, get dressed and go to work!"
    elsif question == question.upcase
      return "I can feel your motivation!" + " I don't care, get dressed and go to work!"
    elsif question.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end

