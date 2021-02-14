Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/show'
  devise_for :users
  root to: "home#index"
  resources :users
end
