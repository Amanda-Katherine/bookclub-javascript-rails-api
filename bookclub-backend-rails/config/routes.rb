Rails.application.routes.draw do
  resources :suggestions, only: [:index, :create, :update, :show, :destroy]
  resources :gatherings, only: [:index]
  resources :members
  resources :books
  resources :book_groups, only: [:index]
end
