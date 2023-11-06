Rails.application.routes.draw do
  root "static_pages#home"
  
  resources :users

  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
   
end
