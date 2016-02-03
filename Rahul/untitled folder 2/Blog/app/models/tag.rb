class Tag < ActiveRecord::Base
	
	belongs_to :user
	has_many :posts , :through => :posttags , dependent: :destroy
	has_many :posttags , dependent: :destroy
	has_many :categories
	has_many :comments

	has_permalink :title
	def to_param
		permalink
	end
end
