Rails.application.routes.draw do
  resources :restaurants
  root to: 'application#index'
end
