Rails.application.routes.draw do
  root to: 'home#index'
  resources :pictures, only: [:show, :new, :create]
  resources :galleries
end
