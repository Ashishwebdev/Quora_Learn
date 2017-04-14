Rails.application.routes.draw do
  get 'user/index'
  
   get "user/topic_interest"
  get 'user/show'

  get 'user/update'

  get 'user/delete'

  get 'user/destroy'

  get 'topic/topic_interest'

  get "sign_in" => 'authentication#sign_in'
   get 'authentication/sign_in'

  get 'authentication/change_password'

  get 'authentication/forgot_password'

get "new_user" => 'authentication#new_user'
  get 'authentication/new_user'

  get 'authentication/password_sent'

  get 'authentication/signed_out'
  get "account_settings" => "authentication#account_settings"

  post "sign_in" => "authentication#login"

  put "new_user" => "authentication#register"


put "account_settings" => "authentication#set_account_info"

root :to=>"home#index"

match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'user/authentication/signed_out', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

resources :user
resources :question
resources :answer
resources :comment
resources :topic

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
