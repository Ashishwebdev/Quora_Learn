Rails.application.routes.draw do
  get "user/topic_interest"
  post "/user/add_user_topics" => "user#add_user_topics"
 get 'home/sign_up'

  get 'topic/topic_interest'


  get "user/answer_question" => "user#answer_question"

root :to=>"home#index"


resources :question
resources :answer
resources :comment
resources :topic

end
