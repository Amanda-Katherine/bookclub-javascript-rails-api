Rails.application.routes.draw do
  resources :suggestions, except: [:new, :edit]
  resources :gatherings, only: [:index]
  resources :members
  resources :book_groups, only: [:index]
  resources :books, only: [:index, :create]
end
