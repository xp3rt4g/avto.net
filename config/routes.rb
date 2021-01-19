Rails.application.routes.draw do
  root :to => 'pages#index'
  devise_for :users
  resources :colors
  resources :pages
  resources :cars
  resources :account_types
  resources :towns
  resources :car_types
  resources :fuel_types
  resources :gearboxes
  resources :vehicle_status
  resources :number_of_owners
  resources :manufacturers
  resources :models

  get '/search' => 'pages#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
