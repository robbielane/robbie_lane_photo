Rails.application.routes.draw do
  root to: 'home#index'
  resources :pictures, except: [:index]
  resources :galleries
  get '/prints', to: 'prints#index'
  get '/prints/:id', as: :print, to: 'prints#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/admin', to: 'admin#index'


  # API
  namespace :api do
    namespace :v1 do
      resources :galleries, only: [:index, :show]
      get '/prints', to: 'prints#index'
      get '/recent', to: 'recent#index'
    end
  end



  match '*any' => 'application#options', :via => [:options]
end
