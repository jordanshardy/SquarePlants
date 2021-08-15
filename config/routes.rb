Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :posts
  resources :listings
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
