class ChargerGallery < ActiveRecord::Base
	belongs_to :charger
	mount_uploader :image , ImageUploader
end
