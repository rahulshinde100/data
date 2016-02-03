class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	belongs_to :tag
	belongs_to :category
	has_many :post_tags
	has_many :tags , through: :post_tags
	
	
end
