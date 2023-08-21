json.extract! product, :id, :categories_id, :description, :price, :name, :created_at, :updated_at
json.url product_url(product, format: :json)
