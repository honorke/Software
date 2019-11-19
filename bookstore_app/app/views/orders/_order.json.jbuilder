json.extract! order, :id, :user_id, :order_no, :payment_time, :created_at, :updated_at
json.url order_url(order, format: :json)
