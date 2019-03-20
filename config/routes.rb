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
    resources :suscriptions, only: [:new, :create, :destroy]
  end
  get 'user/:id/suscription/edit', to: "suscriptions#edit", as: 'suscription_edit'
  post 'user/:id/suscription/update', to: "suscriptions#update", as: 'suscription_update'
  delete 'user/:id/suscription', to: "suscriptions#destroy", as: 'suscription_destroy'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

