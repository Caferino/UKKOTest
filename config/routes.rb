Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  resources :books
  resources :stores
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Sign in / Sign up
  get '/users/index', to: 'users#index', as: 'users_index'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'

  # Dasboard
  get '/dashboard' => 'dashboard#index'
  get 'load_content', to: 'dashboard#load_content'

  # Stock controller
  post '/assign_stock', to: 'stocks#assign_stock', as: :assign_stock

  # Defines the root path route ("/")
  root "dashboard#index"

  # Route for logging out
  delete '/logout', to: 'sessions#destroy', as: :logout
end
