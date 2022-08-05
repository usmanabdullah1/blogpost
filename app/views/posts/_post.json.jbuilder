json.extract! post, :id, :title, :body, :time_to_read, :created_at, :updated_at
json.url post_url(post, format: :json)
