class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	has_many :tags
	has_many :categories
		has_many :post_tags
  	
  	validates_confirmation_of :password
  	validates_presence_of :password, :on => :create
  	validates_presence_of :email
  	validates_uniqueness_of :email 

  	def self.authenticate(email, password)
  		@user = find_by_email(email)
  		if @user.nil?

  			nil
  		else
  			
  			if @user.email.to_s == email.to_s && @user.password.to_s == password.to_s
  				@user
			#puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ #{email} , #{password} $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

		else
			#@user
			#puts "*********************************** #{email} , #{password} *********************************************"
			nil
		end
		
	end

end

	
end
