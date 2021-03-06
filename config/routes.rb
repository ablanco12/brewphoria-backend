Rails.application.routes.draw do
  
  
  resources :beers
  resources :breweries
  resources :reviews
  resources :tried_beers

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end