Rails.application.routes.draw do
  resources :flowers do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:show, :update, :index, :destroy]
end
