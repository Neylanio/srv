json.extract! server, :id,:nome ,:login, :users, :created_at, :updated_at
json.url server_url(server, format: :json)
