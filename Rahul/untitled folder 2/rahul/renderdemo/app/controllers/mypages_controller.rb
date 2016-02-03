class MypagesController < ApplicationController
  def index

  end

  def hello

   
  	if params[:num] == 'rahul'
  		render :recallfun , message: 'success'
  	else
  		redirect_to :back
  	end

  end

  def recallfun

  end
  def failfun
  	
  end

end
