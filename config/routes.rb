Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # resources :pages, only: [:dashboard]
  get 'dashboard', to: 'pages#dashboard'
  get 'profile', to: 'pages#profile'
  get 'about', to: 'pages#about'

  resources :challenges, only: [:index, :show] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :exercises, only: [:show]
  end

  resources :sessions, only: [:create]

  resources :exercises, except: [:show] do
    resources :completed_exercises, only: [:create, :update]
  end

  resources :users
end
