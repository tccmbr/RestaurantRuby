json.extract! restaurant, :id, :name, :type, :address, :neighborhood, :city, :state, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)