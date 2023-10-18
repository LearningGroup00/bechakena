Rails.application.routes.draw do
  resources :categories
  resources :products do
    resources :comments
  end
  root "categories#index"
end
