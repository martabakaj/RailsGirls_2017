class Idea < ApplicationRecord
	mount_uploader :picture, PictureUploader
	validates_presence_of :name 
	validates :description, presence: true,
							length: { minimum: 5, maximum: 60 }

end
