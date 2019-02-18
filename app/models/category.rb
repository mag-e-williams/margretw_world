class Category < ApplicationRecord
	has_many :photos
	has_many :articles

	validates_presence_of :title
	validates_presence_of :content

	scope :active, 			 -> { where('active = ?', true) }
  	scope :alphabetical, -> { order('name') }
  
end
