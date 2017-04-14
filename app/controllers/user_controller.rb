class UserController < ApplicationController

  def index
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

  
end
