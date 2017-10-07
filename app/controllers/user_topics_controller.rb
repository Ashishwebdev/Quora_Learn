class UserTopicsController < ApplicationController


  def new
    @topics = Topic.all
  end

  def create
    
    params["data"].each do |key,value|
      current_user.topics << Topic.find_by_id(value)
    end
    redirect_to root_path
  end

end
