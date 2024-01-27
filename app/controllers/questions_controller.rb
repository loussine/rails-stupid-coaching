class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # debugger
    @question = params[:question]
    @answer = coach_response(@question)
  end

  private

  def coach_response(question)
    # Ajoutez votre logique de réponse du coach ici
    # Par exemple, une réponse générique pour l'exemple
    if question.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif question == 'I am going to work' then 'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
