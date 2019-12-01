json.extract! comment, :id, :user_id, :book_id, :book_comment, :star, :comment_parent, :created_at, :updated_at
json.url comment_url(comment, format: :json)
