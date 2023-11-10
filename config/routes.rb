Rails.application.routes.draw do
  resources :users_roles
  devise_for :users
  root "categories#index"
  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
   
end
