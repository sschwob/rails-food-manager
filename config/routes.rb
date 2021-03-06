Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard'

  get 'geolocation', to: 'orders#geoloc'

  resources :customers

  resources :orders, except: [:edit]

  resources :products

  resources :categories

  resources :users

  resources :delivery_routes, only: [:index, :show, :create, :update]

end
