Rails.application.routes.draw do
  resources :addresses
  resources :users
  get 'home/home'
  get 'home/index'
  get 'home/index'


  resources :varients
  resources :products
  resources :categories

  root "home#index"

end
