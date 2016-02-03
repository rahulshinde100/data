class AccountController < ApplicationController
  def index
    @accounts=Account.all
  end

  def new

  end

  def edit
      @account = Account.find(params[:account][:id])
      #raise @accounts.inspect   
  end

  def update
    
      @account = Account.find(params[:account][:id])
     #@accounts=Account.new(params.require( :account ).permit( :name , :address , :amount ))

      if @account.update(params.require( :account ).permit( :name , :address , :amount ))
        redirect_to action:  'index'
      else
        render 'fail'
      end
  end

  def find
      
  end

  def delete

   
  end

  def getaccountnoforupdate
    
  end

    def destroy
   p '--------------------------------************-------------------------------------------'

    p params
      @accounts = Account.find(params[:account][:id])
      #@justmsg=@accounts.destroy
      
        
     
      if @accounts.destroy
        redirect_to action:  'index'
      else
        render 'fail'
      end
      
    end

  

  def fail()
      @msg='something wrong'
  end

  def create

    p '---------------------------------------------------------------------------'

    p params

    @accounts=Account.new(params.require( :account ).permit( :name , :address , :amount ))
    if @accounts.save
      redirect_to action:  'index'
    else
      render 'fail'
    end

  end

  def show

    
      @account = Account.find(params[:account][:id])
      #@justmsg=@accounts.destroy


  end
end
