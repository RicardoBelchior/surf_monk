class Report < ActiveRecord::Base
	belongs_to :user
	belongs_to :spot

	has_one :forecast # can be nil!
	
	default_scope -> { order('timestamp DESC') }

	validates :user, presence: true
	validates :spot, presence: true
	validates :timestamp, presence: true
	validates :score, presence: true
	validates :wind, presence: true
	validates :sandbank, presence: true
end
