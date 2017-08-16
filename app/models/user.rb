class User < ApplicationRecord
	has_secure_password
	validates_presence_of :nome, :password, :password_confirmation
	has_many :login
	has_many :servers, through: :login

	def self.authenticate(nome, password)
      find_by(nome: nome).
      try(:authenticate, password)
  end
end
