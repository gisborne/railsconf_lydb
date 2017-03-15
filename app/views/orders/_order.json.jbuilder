json.extract! order, :id, :orderdate, :netamount, :tax, :totalamount, :created_at, :updated_at
json.url order_url(order, format: :json)