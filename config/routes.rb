Rails.application.routes.draw do
  get "pages/search"
  # get "ingredients/show"
  # get "ingredient/index"
  # get "ingredient/show"
  # get "items/index"
  # get "items/show"
  # get "items/new"
  get "orders/cart"
  # get "orders/new"
  # get "products/index"
  # get "products/show"
  # get "products/new"
  # get "recipes/index"
  # get "recipes/show"
  # get "recipes/new"
  # get "tags/index"
  devise_for :users
  resources :items
  resources :orders
  resources :products
  resources :recipes
  resources :ingredients
  resources :tags
  get "/contact", to: "messages#new"
  resources :messages, only: [:new, :create]
  # post "messages#create"
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
