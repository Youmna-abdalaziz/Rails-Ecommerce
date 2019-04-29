class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :quantity, presence: true
  validates :product_id, presence: true

  def cart_product
    product.title
  end
  def cart_user
    user.name
  end
end
