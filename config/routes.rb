Rails.application.routes.draw do
  root :to => 'cars#index'
  devise_for :users
  resources :colors
  resources :cars
  resources :account_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
