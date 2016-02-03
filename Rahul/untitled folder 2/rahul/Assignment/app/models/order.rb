class Order < ActiveRecord::Base
	
	belongs_to :product
	validates_presence_of :full_name ,:quantity ,:email , :mobno , :city , :state , :postal_code 
	
	
	
end
