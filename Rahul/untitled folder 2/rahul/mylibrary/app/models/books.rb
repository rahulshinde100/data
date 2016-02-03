class Books < ActiveRecord::Base
	belong_to :subject
	validate_presence_of :titile
	validate_numericality_of :price, :message=>'enter the valid price'
end
