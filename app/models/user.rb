class User < ApplicationRecord
	has_secure_password
	validates_presence_of :nome, :password, :password_confirmation
	belongs_to :srvauths
	has_many :user_servers
	has_many :servers, through: :user_servers
end
