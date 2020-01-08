Rails.application.routes.draw do
  resources :comments
  resources :orders
  resources :shopping_carts do
    collection do
      post :cor
    end
  end
  resources :books do
    collection do
      get :search
    end
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'

  root 'books#index'


end
