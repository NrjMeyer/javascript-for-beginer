class Trano < ApplicationRecord
	has_many :photos
	belongs_to :mpanera
	accepts_nested_attributes_for :photos
end
