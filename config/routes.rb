Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # creates comments as a nested resource within articles
  resources :articles do
    resources :comments
  end
end
