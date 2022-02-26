Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :challenges, only: [:index, :show] do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :exercises, only: [:show]
  end

  resources :sessions, only: [:create]

  resources :users

end
