Rails.application.routes.draw do
 
  resources :coupons
  resources :categories
  resources :brands
  resources :products
  resources :stores
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
  
  
  
  
  
  
  
  
  resources :order_produts
  resources :orders
  resources :shopping_produts
  resources :shopping_carts


end
