class UserController < ApplicationController

  def index
            @user = current_user
            @topics = Topic.all
  end
  def topic_interest
    @user = current_user
    @topics = Topic.all
  end

  def show

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
