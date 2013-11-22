class User < ActiveRecord::Base
	# :surfer_or_spongy types
	surfer_or_spongy_types = ['surfer', 'bodyboarder']

	# user type
	user_roles = ['admin', 'vip', 'normal']


	before_save { email.downcase! }
	before_create :create_remember_token

	validates :name, presence: true, length: { maximum: 50 }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
 	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	
	validates :surfer_or_spongy, presence: true
	validates_inclusion_of :surfer_or_spongy, :in => surfer_or_spongy_types,
		:message => "{{value}} must be in #{surfer_or_spongy_types.join ','}"
	
	validates :role, presence: true
	validates_inclusion_of :role, :in => user_roles,
		:message => "{{value}} must be in #{user_roles.join ','}"

	has_secure_password
	validates :password, length: { minimum: 6 }


	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	# helper method for the view
	def surfer_or_spongy_label
		surfer_or_spongy_types[surfer_or_spongy]
	end

	private
		def create_remember_token
		  self.remember_token = User.encrypt(User.new_remember_token)
		end
end
