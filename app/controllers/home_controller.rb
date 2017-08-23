class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.where(user_id: current_user.id)
    @topics = current_user.topics
    @questions_interested = Array.new
    @topics.each do |topic|
      @questions_interested = Question.all.where(topic_id: topic.id)
    end
  end
end
