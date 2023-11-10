Rails.application.routes.draw do
  get '/users_roles',to: "users_roles#index"
  get 'user_roles/show'
  get 'user_roles/edit'
  devise_for :users
  root "categories#index"
  resources :categories
  resources :products do
    resources :variants
    post :import, on: :collection
  end
   
end
