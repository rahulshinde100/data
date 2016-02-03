class PagesController < ApplicationController
  def index

  	@cook=cookies[:rahul]={ value: "Anchanto Service pvt. ltd.", expires: Time.now + 3600 }
  end

  def delete
   if cookies.delete(:rahul) 
		flash[:success] = 'cookies success deleted....!!!'
	else
		flash[:error] = 'cookies not exist..'
		
 	end 

  end
end
