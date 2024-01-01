Rails.application.routes.draw do
  require 'sidekiq/web'

  root "categories#index"

  mount Sidekiq::Web => '/sidekiq'
  devise_for :users
  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
  resources :user_roles
  resources :shop_details
end
