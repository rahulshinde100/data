class ProductController < ApplicationController
  def index
    @product = Product.all
  end

  def new
    @product=Product.new
    
  end

  def create

p '-------------------------------------------------------------------------------'

    p params
   

     
      @product = Product.new(params.require(:product).permit(:company_name,:product_name,:available_quantity,:price,:sku,:city,:state,:postal_code))
     

      if @product.save
         redirect_to :action => 'success' 
        else
          render :fail
    
        end


  end

  def delete
      Product.find(params[:id]).destroy
      redirect_to :action => 'success'
  end

  def destroy
  end

  def edit
    @product = Product.find(params[:id])
  end

  def modify
      @product = Product.find(params[:id])
      
      if @product.update_attributes(params.require(:product).permit(:company_name,:product_name,:available_quantity,:price,:sku,:city,:state,:postal_code))
         redirect_to :action => 'show' ,:id => @product
      end
  end

  def show
      @product = Product.find(params[:id])
      end

  def dislplay
  end

  def success
    
  end
  def fail
    
  end
end
