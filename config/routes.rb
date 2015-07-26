Rails.application.routes.draw do

  resources :categories
  resources :notes

  root to: 'dashboard#index'
  devise_for :users
  resources :users
end
