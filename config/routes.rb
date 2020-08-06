Rails.application.routes.draw do
  devise_for :users
  root "bookings#index"
  resources :bookings
  resources :users
  resources :messages
  resources :events
  resources :tweets
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
