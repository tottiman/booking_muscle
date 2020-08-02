Rails.application.routes.draw do
  resources :events
  devise_for :users
  root "bookings#index"
  resources :bookings
  resources :users
  resources :messages
  resources :events



    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
