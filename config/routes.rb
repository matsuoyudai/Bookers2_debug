Rails.application.routes.draw do
  get 'home/about'
  root 'home#top'
  devise_for :users
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
end