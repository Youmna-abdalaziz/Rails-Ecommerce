class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :store
  has_one_attached :image
  has_many :order_products
  has_many :orders, :through =>:order_products
  has_many :carts
  has_many :users, :through =>:carts



  def product_category
    category.name
  end

  def product_brand
    brand.name
  end

  def product_store
    store.name
  end


  
end
