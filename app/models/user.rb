class User < ActiveRecord::Base
	
	before_save :encrypt_password
	validates :username, presence: true, uniqueness: true
	validates_presence_of :full_name
	validates_presence_of :role
  
  has_secure_password
	
end
