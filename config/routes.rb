Rails.application.routes.draw do
  #get 'sessions/new'
  get 'users/index'
  root "users#index"
  get 'users/new'

  resources :users
  resources :sessions
end
