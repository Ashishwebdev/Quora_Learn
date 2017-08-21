class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new

  end

  def create

    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
    redirect_to root_path
    else
     redirect_to new_question_path
    end
  end


  private

  def question_params
    params.require(:question).permit(:body, :topic_id, :user_id)
  end

end
