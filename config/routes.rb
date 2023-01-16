Rails.application.routes.draw do
  get 'comment/store'
  resources :posts
  devise_for :users
  root to: 'pages#home'

  get "/dashboard", to: "pages#dashboard"
  get "/about", to: "pages#about"
  post 'comment/store'
  resources :users

end
