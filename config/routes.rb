Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users
  root "categories#index"
  
  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
  resources :user_roles    
end
