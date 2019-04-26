class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :shopping_products 
  has_mny :products , :through => :shopping_products
end
