class Cin < ApplicationRecord
	has_one :user
	has_one :mpanera
	mount_uploader :url, ImageUploader
end
