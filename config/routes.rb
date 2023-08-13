Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  resources :books
  resources :stores
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'dashboard#index'

  # Defines the root path route ("/")
  root "users#index"

  # Route for logging out
  delete '/logout', to: 'sessions#destroy', as: :logout
end
