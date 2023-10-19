Rails.application.routes.draw do
  resources :categories
  resources :products do
    resources :variants
  end
  root "categories#index"
  resources :users
end
