Rails.application.routes.draw do
  get "home/index"
  get "users/show"
  devise_for :users
  root 'posts#index'
  
  resources :posts, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
end

