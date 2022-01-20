Rails.application.routes.draw do

  devise_for :users, :controllers => {
    registrations: 'registrations'
  }
  root to: "pages#home"

  resources :flowers do
    resources :orders, only: [:new, :create, :index]
    resources :reviews, only: [:index, :show, :new, :create, :destroy, :update]
  end
  resources :orders, only: [:show, :update, :index, :destroy]
  resources :users, only: [:show] do
    member do
      get :sales
    end
  end
end
