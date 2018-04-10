json.extract! user, :id, :name, :username, :email, :password, :biography, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
