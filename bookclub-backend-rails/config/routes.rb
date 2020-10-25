Rails.application.routes.draw do
  resources :book_groups
  resources :books
  # get '/test', to: 'application#test'
end
