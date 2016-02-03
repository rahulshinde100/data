class Author < ActiveRecord::Base

	validates :name , :presence => true

	has_many :authorbooks
	has_many :books , :through => :authorbooks
end
