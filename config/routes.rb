Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # resources :pages, only: [:dashboard]
  get 'dashboard', to: 'pages#dashboard'

  resources :challenges, only: [:index, :show] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :exercises, only: [:show]
  end

  resources :sessions, only: [:create]

  resources :completed_exercises, only: [:create, :update]

  resources :users
end
