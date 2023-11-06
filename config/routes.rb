Rails.application.routes.draw do
  root "static_pages#home"

  get "/sign_up", to: "users#new"
  post "/sign_up", to: "user#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  get "/logout", to: "sessions#destroy"
  
  resources :users

  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
   
end
