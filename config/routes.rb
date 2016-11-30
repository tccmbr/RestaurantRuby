Rails.application.routes.draw do
  resources :comments
  resources :restaurants
  root to: 'application#index'
end
