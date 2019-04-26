class Store < ApplicationRecord
  belongs_to :user

  def store_seller
    user.name
  end
end
