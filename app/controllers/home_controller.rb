class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.where(user_id: current_user.id)
    @topics = current_user.topics
    @questions_interested = Array.new
    i=0
    @topics.each do |topic|
      @questions_interested[i] = topic.question_ids.to_param
      i=i+1
    end
  end
end
