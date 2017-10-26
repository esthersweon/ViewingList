Rails.application.routes.draw do

  devise_for :users
  root "lists#index"

  resources :lists, except: [:new, :edit] do
    resources :comments, only: [:create, :destroy]
  end

  get  "/user", to: 'users#show', as: "user"

  resources :movies

end
