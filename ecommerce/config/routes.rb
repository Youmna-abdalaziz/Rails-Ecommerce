Rails.application.routes.draw do
 
  
  resources :products
  # resources :carts
  resources :coupons
  resources :categories
  resources :brands
  resources :products 
  resources :carts
  resources :stores

  
  # get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  
  
  
  
  
  
  
  
  
  
  
  resources :orders 
  resources :order_products 
  
  resources :carts  do
    end


end
