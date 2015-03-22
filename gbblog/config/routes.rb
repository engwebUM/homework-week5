Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts
  resources :authors
  resources :categories
  # get 'posts/index'
  # get 'posts/show'
end
