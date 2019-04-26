json.extract! order_produt, :id, :order_id, :product_id, :quantity, :unit_price, :status, :created_at, :updated_at
json.url order_produt_url(order_produt, format: :json)
