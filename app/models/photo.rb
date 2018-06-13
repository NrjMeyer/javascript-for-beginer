class Photo < ApplicationRecord
	belongs_to :trano
	mount_uploader :url, ImageUploader
end
