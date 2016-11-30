json.extract! comment, :id, :message, :author, :restaurant_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)