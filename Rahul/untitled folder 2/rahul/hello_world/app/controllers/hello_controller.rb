class HelloController < ApplicationController

	def simplemsg
		@var="welcome to my website....!!!"
		
	end

	def addition
p '---------'
p params
		#@add=Hello.new(add_params)

		@ans=params[:add1][:num1_title].to_i + params[:add2][:num2_title].to_i

		p params[:add1][:num1_title].to_i
		#@ans="Adition is:-"

	end

end
