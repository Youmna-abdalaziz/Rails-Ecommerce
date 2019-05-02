class Store < ApplicationRecord
  belongs_to :user
  has_many :products

  def store_seller
    user.name
  end

end
