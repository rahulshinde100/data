class Login < ActiveRecord::Base

	validates_uniqueness_of :username 
	validates_presence_of :username , :password , :confirmpassword , :message => 'enter the values'
	  validates_format_of :username, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create


	  	validates :password, :presence =>true,
                    :length => { :minimum => 5, :maximum => 40 },
                    :confirmation =>true
  		validates_confirmation_of :confirmpassword

 end
