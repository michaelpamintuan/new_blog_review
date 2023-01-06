Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'pages#home'

  get "/dashboard", to: "pages#dashboard"

  resources :users

end
