class OrderController < ApplicationController
  def index
    @product = Product.all
  end

  def new
    @order = Order.new
     @product = Product.find(params[:id])
  end

  def create

    p '-------------------------------------------------------------------------------'

    p params

           amount = params[:order][:quantity].to_i * 5
        
           #raise params.inspect
           tracking_no= Order.maximum('tracking_no')
           if tracking_no.nil?
            tracking_no=0
          end
          tracking_no = tracking_no + 1

          
           params["order"].merge!("amount" => amount , "tracking_no" => tracking_no)
          @order = Order.new(params.require(:order).permit(:tracking_no , :full_name , :quantity , :amount ,:email , :mobno,:city , :state , :postal_code , :product_id ))

          if @order.save
            @product =Product.find(params[:order][:product_id])
            remaining_quantity= @product.available_quantity.to_i - params[:order][:quantity].to_i
             Product.update(params[:order][:product_id] , available_quantity: remaining_quantity )
            redirect_to action: 'success'

          else
            redirect to action: 'fail'
          end



  end

  def update
  end

  def delete
  end

  def edit
  end

  def show
  end

  def view
  end

  def search
  end

  def success
  end

  def fail
  end

  def display
  end
end
