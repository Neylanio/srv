json.extract! user, :id, :nome, :servers, :created_at, :updated_at
json.url user_url(user, format: :json)
