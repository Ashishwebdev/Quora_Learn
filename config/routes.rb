Rails.application.routes.draw do

  devise_for :users
=begin
  get "user/topic_interest"
  post "/user/add_user_topics" => "user#add_user_topics"
  get 'topic/topic_interest'
  get "user/answer_question" => "user#answer_question"
=end
  root :to=>"home#index"

 resources :topics do
   resource :user_topics
   resource :questions
 end

  scope :questions do
    resources :answers, shallow: true
  end

  scope :answers do
    resources :comments
  end

  scope :comments do
    resources :answer_comments
  end

=begin
resources :question
resources :answer
resources :comment
resources :topic
=end

end
