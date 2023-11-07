Rails.application.routes.draw do
  root "categories#index"
  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
   
end
