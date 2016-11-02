json.extract! cart, :id, :customer_id, :stall_id, :fish_id, :qty, :price, :created_at, :updated_at
json.url cart_url(cart, format: :json)