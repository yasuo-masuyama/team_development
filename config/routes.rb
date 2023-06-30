Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
end
