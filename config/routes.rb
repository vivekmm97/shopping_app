Rails.application.routes.draw do
  get 'users/index'
  root "users#index"
  get 'users/new'

  resources :users
end
