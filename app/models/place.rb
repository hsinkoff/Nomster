class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :photos
	geocoded_by :address
	after_validation :geocode
	validates :name, length: {minimum:3, maximum:40}
	validates :address, :presence => true
	validates :description, :presence => true
end
