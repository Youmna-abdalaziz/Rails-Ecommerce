class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :store
<<<<<<< HEAD




  has_many :shopping_products 
  has_many :shopping_carts , :through => :shopping_products
  has_many :order_products
  has_many :orders , :through=>:order_products

=======
  has_one_attached :image

  def product_category
    category.name
  end

  def product_brand
    brand.name
  end

  def product_store
    store.name
  end
>>>>>>> 3086c3322b8e72e47701678bc4681731544040c2
end
