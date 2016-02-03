class LoginController < ApplicationController
	
	def new
		@user = User.new
	end

	def create

		@user = User.new(params.require(:user).permit(:email,:password , :confirm_password))
		
		if @user.save
			redirect_to action: 'index'
			
		end
	end

	def index
	end
end
