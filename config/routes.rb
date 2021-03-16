Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "restore/:id", to: "posts#restore", as: :restore

  resources :posts
end
