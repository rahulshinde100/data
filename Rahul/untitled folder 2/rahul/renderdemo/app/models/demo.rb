class Demo < ActiveRecord::Base
	validates_numericality_of :num, :message=>"Error Message"
end
