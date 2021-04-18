Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'homes/index'
  
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show]
end
