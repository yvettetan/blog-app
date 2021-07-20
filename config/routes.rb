Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/about'

  resources :articles
end
