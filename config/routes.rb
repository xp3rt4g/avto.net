Rails.application.routes.draw do
  root :to => 'searches#new'
  devise_for :users
  resources :users
  resources :colors
  resources :pages
  resources :cars
  resources :account_types
  resources :vehicle_statuses
  resources :towns
  resources :car_types
  resources :fuel_types
  resources :gearboxes
  resources :vehicle_status
  resources :number_of_owners
  resources :manufacturers
  resources :models
  resources :searches


  get 'cars/update_models' , :as => 'update_models' 
  get '/search' => 'searches#advanced'
  get '/home' => 'cars#home'
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
