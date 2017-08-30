json.extract! order, :id, :number, :email, :name, :shopify_order_id, :order_date, :total, :line_item_count, :created_at, :updated_at
json.url order_url(order, format: :json)
