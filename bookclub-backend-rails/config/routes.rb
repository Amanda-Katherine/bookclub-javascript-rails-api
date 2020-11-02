Rails.application.routes.draw do
  resources :suggestions, only: [:index, :create, :update, :show, :destroy]
  resources :gatherings, only: [:index]
  resources :members
  resources :book_groups
  resources :books
  # get '/test', to: 'application#test'
end
