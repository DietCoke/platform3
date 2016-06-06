Rails.application.routes.draw do
  get 'sessions/new'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions
  
  root to: "sessions#new"
end
