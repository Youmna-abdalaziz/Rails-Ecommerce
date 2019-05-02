json.extract! product, :id, :title, :image, :price, :quantity_in_stock, :description, :category_id, :brand_id, :user_id, :coupon_id, :created_at, :updated_at
json.url product_url(product, format: :json)
