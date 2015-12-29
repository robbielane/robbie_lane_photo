Rails.application.routes.draw do
  root to: 'home#index'
  resources :pictures
  resources :galleries
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/admin', to: 'admin#index'
end
