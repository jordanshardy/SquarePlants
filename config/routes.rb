Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'
  resources :listings
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
