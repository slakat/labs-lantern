class Flashlight < ActiveRecord::Base

	has_many :flashlight_galleries, dependent: :destroy 
	mount_uploader :image , ImageUploader
end
