Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'cbd_story', to: 'pages#cbd_story'
  get 'contact', to: 'pages#contact'

  resources :flowers do
    resources :orders, only: [:new, :create, :index]
    resources :reviews, only: [:index, :show, :new, :create, :destroy, :update]
  end
  resources :orders, only: [:show, :update, :index, :destroy]
  resources :users, only: [:show]
end
