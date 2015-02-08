class User < ActiveRecord::Base
	include ActiveModel::SecurePassword
	has_many :cars

	has_secure_password

	validates :email, uniqueness: true
	validates :password, confirmation: true
end
