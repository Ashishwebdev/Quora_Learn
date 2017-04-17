class UserController < ApplicationController

  def index
            @user = current_user
           @topics =  @user.topics
           @questions = @user.questions
           

  end
  def topic_interest
    @user = current_user
    @topics = Topic.all
  end

  def add_user_topics
    current_user.topics.delete_all
    params["data"].each do |key,value|
      current_user.topics << Topic.find_by_id(value)
    end
    redirect_to :user_index
  end


  def show
    @user_topics = current_user.topics
  end

  def edit

  end

  def update

  end

  def delete

  end

  def destroy

  end
 private
   def topic_params
   params.require(:topic).permit(:content)
  end
  
  def user_params
   params.require(:topic).permit(:name)
  end
end
