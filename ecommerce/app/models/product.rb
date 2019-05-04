class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  belongs_to :user
  belongs_to :coupon, optional: true
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
  def product_seller
    user.name
  end
  def product_coupon
   if coupon.present?
    coupon.title
   else
    "No coupon covers this product"
   end
  end

  





  def self.search_by(search_term)
    # @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("category_id LIKE ?","#{filter_term}")

    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}")
  end
  def self.filter(filter_term,search_term)
    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("category_id LIKE ?","#{filter_term}")
  end
  def self.filterb(filter_brand,search_term)
    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("brand_id LIKE ?","#{filter_brand}")

    # where("brand_id LIKE ?","#{filter_brand}")
  end
  def self.filters(filter_seller,search_term)
    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("user_id LIKE ?","#{filter_seller}")

    # where("brand_id LIKE ?","#{filter_brand}")
  end
  def self.filterp(price,tprice,search_term)
    @Product=Product.where("LOWER(title) LIKE :search_term OR LOWER(description) LIKE :search_term ",search_term: "%#{search_term.downcase}").where("price > ? AND price < ? " , "#{price.to_i}","#{tprice.to_i}")
  end
  # def get_coupon
  #   # product = Product.find(id:product_id)
  #    self.coupon
  # end
end
