class AnswersController < ApplicationController
before_action :authenticate_user!
  def new
    @question = Question.find(params[:question_id])
  end

def show
  @answer  = Answer.find(params[:id])
end

  def create
   @answer = Answer.new(answer_params)
   @answer.user_id = current_user.id
   if @answer.save
    redirect_to root_path
    else
      redirect_to new_question_answer_path
    end
  end

  def edit
     @answer = Answer.find(params[:question_id])
  end


  def update

  end

  private

  def answer_params
    params.permit(:user_id, :question_id,:body)

  end
end
