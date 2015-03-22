Rails.application.routes.draw do
  root to: 'post#index'

  resources :post
  resources :author
  resources :category
  resources :archive
end
