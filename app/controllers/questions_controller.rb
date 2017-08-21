class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = current_user.question.create(params[:question_id])
  end


end
