class UserTopicsController < ApplicationController


  def create
    current_user.topics.delete_all
    params["data"].each do |key,value|
      current_user.topics << Topic.find_by_id(value)
    end
    redirect_to root_path
  end

end
