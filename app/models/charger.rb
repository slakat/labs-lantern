class Charger < ActiveRecord::Base
	has_many :charger_galleries, dependent: :destroy 

	mount_uploader :image , ImageUploader
end
