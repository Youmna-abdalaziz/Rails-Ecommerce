class Store < ApplicationRecord
  belongs_to :user

  def store_seller
    user.name
  end

  def id
    id
  end

  def product_store_id(id)
    select("id").where(user_id:id)
  end

end
