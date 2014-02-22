class Flashlight < ActiveRecord::Base

	has_many :flashlight_galleries, dependent: :destroy , :through => :id
	mount_uploader :image , ImageUploader
end
