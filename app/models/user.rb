class User < ActiveRecord::Base

	has_many :reviews
	
	has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :license_plate_state, presence: true
    validates :license_plate_number, presence: true
    validates :vehicle_image, presence: true

	
	# paperclip gem
	has_attached_file :vehicle_image,
					  :styles => { 
					  	:medium => "300x300>", 
					  	:thumb => "100x100>" }, 
					  :default_url => "/images/:style/missing.png"

	 # paperclip required validation
    validates_attachment_content_type :vehicle_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
