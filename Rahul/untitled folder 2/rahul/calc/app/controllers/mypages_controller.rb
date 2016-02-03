class MypagesController < ApplicationController

	def home
		
	end

	def alloperations

		#p '-------------------------*********************---------------------'



		#p params
		
	end

	def addition
		p '-------------------------*********************---------------------'
		@ans=params[:num1][:number1].to_i + params[:num2][:number2].to_i
		p params
	end
	def substraction
		
	end
	def multiplication
		
	end
	def division
		
	end
end
