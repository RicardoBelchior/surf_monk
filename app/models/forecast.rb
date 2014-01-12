class Forecast < ActiveRecord::Base
	belongs_to :surfline_forecast
	belongs_to :buoy
	belongs_to :tide

	# Example: 
	# f = Forecast.create!
	# f.tide = ...
	# f.buoy = ...
	# f.save!

	#json = '{"tide":"{"size":"2.2","date":"Sat, 07 Dec 2013 20:03:44 UTC +00:00", "tyde_type":"up", "seaport":"leixoes"}", "buoy":"nil", "surfline_forecast":"nil"}'
	end
