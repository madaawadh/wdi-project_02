Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'orders/show'
  get 'orders/new'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'tags/index'
  devise_for :users
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
