Rails.application.routes.draw do
  devise_for :users
  root "bookings#index"
  resources :bookings
  resources :users
  resources :messages
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
