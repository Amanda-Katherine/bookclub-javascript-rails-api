Rails.application.routes.draw do
  resources :suggestions, except: [:new, :edit]
  resources :gatherings, only: [:index]
  resources :members, only: [:create, :index, :show]
  resources :book_groups, only: [:index]
  resources :books, only: [:index, :create]
  # resources :registrations, only: [:create]
  resources :sessions, only: [:create]
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # get '/logged_in', to: 'sessions#is_logged_in?'


  # for own user auth
  # root to: "static#home"
end
