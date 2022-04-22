json.extract! order, :id, :customer_id, :total, :order_date, :created_by, :created_at, :updated_at
json.url order_url(order, format: :json)
