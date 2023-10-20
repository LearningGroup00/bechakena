Rails.application.routes.draw do
  resources :categories
  resources :products do
    resources :variants
    post :import
  end
  root "categories#index"
  resources :users
end
