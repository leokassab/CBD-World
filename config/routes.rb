Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :flowers do
    resources :orders, only: [:new, :create]
    resources :reviews, only: [:index, :show, :new, :create, :destroy, :update]
  end
  resources :orders, only: [:show, :update, :index, :destroy]
  resources :users, only: [:show]
end
