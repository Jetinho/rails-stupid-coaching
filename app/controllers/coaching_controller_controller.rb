class CoachingControllerController < ApplicationController
  def answer
  end

  def ask
  end
end

def coach_answer(question)
  if params[:query].downcase == "i am going to work right now!"
    return "Great kid"
  elsif (params[:query].include? "?") && (params[:query] == params[:query].upcase)
    return "I can feel your motivation!" + " Silly question, get dressed and go to work!"
  elsif params[:query] == params[:query].upcase
    return "I can feel your motivation!" + " I don't care, get dressed and go to work!"
  elsif params[:query].include? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end
