class Category < ActiveRecord::Base
	has_many :posts
	has_many :comments
	has_many :tags
end
