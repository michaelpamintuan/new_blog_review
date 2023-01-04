json.extract! post, :id, :title, :content, :video_url, :image_url, :status, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
