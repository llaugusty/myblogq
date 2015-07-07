class PinPost < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :large => "768x768"}
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
