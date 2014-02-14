class Charger < ActiveRecord::Base

	mount_uploader :image , ImageUploader
end
