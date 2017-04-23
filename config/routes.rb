Rails.application.routes.draw do
  resources :products, param: :prod_id
  resources :orders
  resources :customers
  resources :categories

  resources :reports, only: [:index, :show]
end
