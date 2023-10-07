Rails.application.routes.draw do
  resources :categories
  root "home#index"
  resources :products
end
