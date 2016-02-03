class PagesController < ApplicationController
  def index
  end

  def new
  	#@stores=Store.new
  end

  def create
  	p '----------------------------------------------------'
  	p params

  	@stores=params.require(:stores).permit(:item_name,:price)
  	if @strores.save

  		redirect_to :action => 'show'
  	end

  end

  def show

  		@stores=Store.find(params[:id])
  end
end
