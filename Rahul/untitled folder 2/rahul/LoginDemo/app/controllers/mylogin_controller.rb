class MyloginController < ApplicationController
  def index
  end

  def new

    @mylogin=Login.new
  end

 def show
   
 end

 def find
   
 end
 def search
   
 end

  def create

    p '------------------------------------------------------'
    p params

    @mylogin = Login.new( params.require(:login).permit( :username , :password , :confirmpassword ) )

       

        if @mylogin.save
          redirect_to :action => 'success'
        else
         # p @login.errors
          render :action => 'new' #, :message => @login.errors.messages
       
      end
  end

  def login
  end

  def fail
  end

  def success
  end
end
