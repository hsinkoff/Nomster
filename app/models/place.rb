class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, length: {minimum:3, maximum:40}
	validates :address, :presence => true
	validates :description, :presence => true
end
