class Book < ActiveRecord::Base
		attr_accessible :name
	has_many :authorbooks
	has_many :authors , :through => :authorbooks
end
