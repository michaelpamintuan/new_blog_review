Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'pages#home'

  get "/dashboard", to: "pages#dashboard"

  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
