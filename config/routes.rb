Rails.application.routes.draw do
  # get 'users/index' => "users#index"
  devise_for :users
  resources :posts
  root 'posts#index'

  get 'users/show/:name' => 'users#show', as: 'user_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
end
