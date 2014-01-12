class SurflineForecast < ActiveRecord::Base
	
	has_one :wind_info
	has_many :swell_infos

	# This allows for creating SurflineForecast from a full JSON object
	accepts_nested_attributes_for :wind_info
	accepts_nested_attributes_for :swell_infos

	#validates_presence_of 
	#	:swell_height, :swell_height_sdev, :spot, :wind_info, :timestamp

	#validate sizeof swell_infos


	#json = JSON.parse(str)
	#for each f in json['forecasts']
  	# sf = SurflineForecast.new(f).new
  	# sf.save!
  	
end
