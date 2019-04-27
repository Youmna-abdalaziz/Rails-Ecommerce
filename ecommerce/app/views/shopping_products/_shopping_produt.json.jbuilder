json.extract! shopping_produt, :id, :shopping_cart_id, :product_id, :quantity, :created_at, :updated_at
json.url shopping_produt_url(shopping_produt, format: :json)
