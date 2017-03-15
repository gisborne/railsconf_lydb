json.extract! product, :id, :title, :actor, :price, :created_at, :updated_at
json.url product_url(product, format: :json)