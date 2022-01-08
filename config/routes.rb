Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :flowers do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:show, :update, :index, :destroy]
end
