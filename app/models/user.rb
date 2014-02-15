class User < ActiveRecord::Base
	
	has_secure_password
  validates_presence_of :password, :on => :create
	validates :username, presence: true, uniqueness: true
	validates_presence_of :full_name
	validates_presence_of :role

  
	
end
