Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :charities do
    resources :donations, only: [:create]
  end
  resources :users, only: [:show] do
    resources :donations, except: [:new, :create]
  end
  resources :user, only: [:show] do
    resources :suscriptions, only: [:new, :create]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

