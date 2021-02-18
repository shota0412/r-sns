Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users
  resources :tweets, only: [:new, :create, :show, :edit]
end
