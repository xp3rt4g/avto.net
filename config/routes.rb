Rails.application.routes.draw do
  root :to => 'cars#index'
  devise_for :users
  resources :colors
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
