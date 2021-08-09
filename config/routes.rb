Rails.application.routes.draw do
  resources :listings
  devise_for :users
  root to: 'pages#home'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
