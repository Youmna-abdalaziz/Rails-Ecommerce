class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def product_price
    product.price
  end

  def product_name
    product.title
  end

  def product_quantity
    product.quantity_in_stock
  end
end
