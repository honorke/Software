Rails.application.routes.draw do
  resources :comments
  resources :orders
  resources :shopping_carts
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
end
