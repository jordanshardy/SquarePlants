json.extract! post, :id, :name, :content, :age, :grow_medium, :training_method, :light_type, :room_type, :watering, :strain, :created_at, :updated_at
json.url post_url(post, format: :json)
