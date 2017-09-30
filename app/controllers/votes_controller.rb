class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer
  def upvote
        @answer.upvote_by current_user
        respond_to do |format|
          format.html { redirect_to root_path, alert: 'Page not accessible' }
          format.js
        end
      end

  def downvote
    @answer.downvote_by current_user
    respond_to do |format|
      format.html { redirect_to root_path, alert: 'Page not accessible'}
      format.js
    end
  end

  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

end
