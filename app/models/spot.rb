class Spot < ActiveRecord::Base
	validates :name, presence: true 

	VALID_GPS_REGEX = /\A\s*-?\d+\.\d+\,\s?-?\d+\.\d+\s*\z/
	validates :gps, format: { with: VALID_GPS_REGEX }, :allow_blank => true

	VALID_DOMAIN_REGEX = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
	validates :website, format: { with: VALID_DOMAIN_REGEX }, :allow_blank => true

	#before_save { name.downcase! }



	# EXAMPLE create object from json string
	# json = JSON.parse( '{"name":"myImage", "website": "www.google.com", "description": "aaa" }')
	# Spot.new(json)
end
