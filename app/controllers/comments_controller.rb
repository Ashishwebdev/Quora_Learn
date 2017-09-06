class CommentsController < ApplicationController

  before_action :set_answer , only: [:create]
  before_action :set_comment, only: [:edit, :update, :destroy]
  def create
    @comment =  @answer.comments.new(comment_params)
    @comment.save
    @answer_comments = @answer.answer_comments.where(comment_id: @comment.id).first_or_create
    @user_comments = @comment.user_comments.where(user_id: current_user).first_or_create
    respond_to do |format|
      format.html { redirect_to root_url, alert: 'Page not accessible' }
      format.js
    end

  end

  def edit

  end

  def update
   @comment.update(comment_params)
    redirect_to root_path
  end

  def destroy
    @comment.destroy
    redirect_to root_path
  end


  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

 def comment_params
    params.permit(:body)
 end

end
