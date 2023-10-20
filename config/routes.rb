Rails.application.routes.draw do
  post '/sign_in', to: "users#sign_in"
  get '/sign_in_view',to: "users#sign_in_view"
  post '/sign_up',to: "users#sign_up"
  get '/sign_up_view',to: "users#sign_up_view"
  get '/sign_out',to: "users#sign_out"

  get 'homes/home'
  resources :categories
  resources :products
  root "homes#home"
end
