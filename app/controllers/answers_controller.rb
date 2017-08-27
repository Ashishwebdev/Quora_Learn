class AnswersController < ApplicationController
before_action :authenticate_user!
before_action :set_answer , only: [:show, :edit , :update, :destroy]
  def new
    @question = Question.find(params[:question_id])
  end

def show

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
    @question = Question.find(params[:question_id])

  end


  def update
   @answer.update(answer_params)
    redirect_to root_path
  end

  def destroy

    @answer.destroy
    redirect_to root_path
end


  private

def set_answer
  @answer  = Answer.find(params[:id])
end

  def answer_params
    params.permit(:user_id, :question_id,:body)
  end
end
