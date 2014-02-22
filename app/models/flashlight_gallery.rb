class FlashlightGallery < ActiveRecord::Base
	belongs_to :flashlight


	mount_uploader :image , ImageUploader

	
end
