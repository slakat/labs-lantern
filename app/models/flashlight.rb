class Flashlight < ActiveRecord::Base

	mount_uploader :image , ImageUploader
end
