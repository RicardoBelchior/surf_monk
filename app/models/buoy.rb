class Buoy < ActiveRecord::Base
	belongs_to :surfline_forecast

	# Example: b = Buoy.create!(:height_significant => '2.1', :height_max => '1.5', 
	# 	:period_avg => '11.1', :period_max => '14', :swell_direction => 340, 
	#   :water_temperature => '22.5', :location => 'Leixoes')
	# "height_significant":"2.1", "height_max":"1.5", "period_avg":"11.1", "period_max":"14", "swell_direction":"340", "water_temperature":"22.5", "location":"Leixoes"
end
