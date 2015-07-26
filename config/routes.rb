Rails.application.routes.draw do

  resources :categories do
    get 'assign_to_user' , on: :member
    get 'unassign_from_user', on: :member
  end
  resources :notes

  root to: 'dashboard#index'
  devise_for :users
  resources :users
end
