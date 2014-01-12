class WindInfo < ActiveRecord::Base

	validates :strength, presence: true
	validates :direction, presence: true
end
