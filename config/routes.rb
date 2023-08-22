Rails.application.routes.draw do
  get 'home/home'
  get 'home/index'
  get 'home/index'


  resources :varients
  resources :products
  resources :categories

  root "home#index"

end
