Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root to: 'home#top'
  get "home/about" => "home#about" , as: "about"

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
