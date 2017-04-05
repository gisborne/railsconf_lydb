Rails.application.routes.draw do
  resources :products
  resources :orders
  resources :customers
  resources :categories

  resources :reports, only: [:index, :show]
end
