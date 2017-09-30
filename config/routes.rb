Rails.application.routes.draw do
  devise_for :users
=begin
  get "user/topic_interest"
  post "/user/add_user_topics" => "user#add_user_topics"
  get 'topic/topic_interest'
  get "user/answer_question" => "user#answer_question"
=end
  root :to=>"home#index"


  resource :user_topics


  resources :questions do
    resources :answers
  end

  scope :answers do
    resources :comments
  end

  resources :answers, only: []  do
    put "Upvote", to: "votes#upvote"
    put "Downvote", to: "votes#downvote"
  end

  scope :comments do
    resources :answer_comments
  end


end
