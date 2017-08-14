json.extract! login, :id, :login, :senha, :user_id, :server_id, :created_at, :updated_at
json.url login_url(login, format: :json)
