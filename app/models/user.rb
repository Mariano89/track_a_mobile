class User < ActiveRecord::Base
	include ActiveModel::SecurePassword
	has_many :cars

	has_secure_password

	validates :name, presence: true
	validates :email, presence: true,  uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, confirmation: true
end
