class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :store




  has_many :shopping_products 
  has_many :shopping_carts , :through => :shopping_products
  has_many :order_products
  has_many :orders , :through=>:order_products

end
