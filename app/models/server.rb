class Server < ApplicationRecord
	has_secure_password
	validates_presence_of :login, :password, :nome, :password_confirmation
	has_many :login
	has_many :users, through: :login
end
