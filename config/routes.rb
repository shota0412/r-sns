Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users
  resources :tweets, only: [:new, :create, :show, :destroy]
end
