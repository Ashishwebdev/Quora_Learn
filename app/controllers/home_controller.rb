class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.where(user_id: current_user.id)
    @topics = current_user.topics
  end
end
