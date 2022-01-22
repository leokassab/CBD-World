Rails.application.routes.draw do

  devise_for :users, :controllers => {
    registrations: 'registrations'
  }

  root to: "pages#home"
  get 'cbd_story', to: 'pages#cbd_story'
  get 'contact', to: 'pages#contact'

  resources :flowers do
    resources :orders, only: [:new, :create]
    resources :reviews, only: [:index, :show, :new, :create, :destroy, :update]
  end
  resources :orders, only: [:update, :index, :destroy]
  resources :users, only: [:show] do
    member do
      get :sales
      get :cart
    end
  end

  patch 'update_all_orders', to: 'users#update_all_orders', as: :update_all_orders
end
