class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :store
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
  def self.search_by(search_term)
    where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}")
  end
end
