	class UserSession
	include ActiveModel::Model
	attr_accessor :nome, :password, :token
	validates_presence_of :nome, :password, :token
	

	def initialize(session, attributes={})
		@session = session
		@nome = attributes[:nome]
		@password = attributes[:password]
		@token = attributes[:token]
	end

	def authenticateToken
		require 'uri'
		require 'net/http'

		uri = URI("http://192.168.74.102:3000/tokens")

		
		# creating a request object
		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		# GET request
		validates_token = http.get(uri)

		if @token == validates_token
			true
		else
			errors.add(:base, :invalid_login)
			false
		end
	end	

	def authenticate!
		user = User.authenticate(@nome, @password)
		if user.present?
			store(user)
		else
		errors.add(:base, :invalid_login)
			false
		end
	end

	def store(user)
		@session[:user_id] = user.id
	end

	def current_user
		User.find(@session[:user_id])
	end

	def user_signed_in?
		@session[:user_id].present?
	end

	def destroy
		@session[:user_id] = nil
	end

end
