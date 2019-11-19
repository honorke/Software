json.extract! user, :id, :name, :password, :emial, :address, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
