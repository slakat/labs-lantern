class AccessoryGallery < ActiveRecord::Base
	belongs_to :accesory
	mount_uploader :image , ImageUploader
end
