Rails.application.routes.draw do

  devise_for :users
  root "pages#index"

  get "/lists", to: "lists#index", as: "lists"

  get '/secret', to: 'pages#secret', as: :secret
end
