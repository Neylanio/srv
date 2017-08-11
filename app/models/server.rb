class Server < ApplicationRecord
	has_secure_password
	validates_presence_of :login, :password, :nome, :password_confirmation
	has_many :user_servers
	has_many :users, through: :user_servers
end
