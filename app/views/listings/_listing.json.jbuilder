json.extract! listing, :id, :name, :age, :available, :quantity, :price, :post_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
