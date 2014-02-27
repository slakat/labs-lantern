class Accessory < ActiveRecord::Base
	has_many :accessory_galleries, dependent: :destroy 

	mount_uploader :image , ImageUploader
	
end
