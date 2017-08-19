Rails.application.routes.draw do

  devise_for :users
=begin
  get "user/topic_interest"
  post "/user/add_user_topics" => "user#add_user_topics"

  get 'topic/topic_interest'


  get "user/answer_question" => "user#answer_question"


=end
  root :to=>"home#index"

resources :question
resources :answer
resources :comment
resources :topic

end
