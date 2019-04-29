class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :quantity, presence: true
  validates :product_id, presence: true
end
