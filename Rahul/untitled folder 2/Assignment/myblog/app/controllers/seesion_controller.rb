class SeesionController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  		

  		@user = User.authenticate(params[:user][:email], params[:user][:password])
  	
  			if @user
    			session[:user_id] = @user.id
    			#flash[:success] = '"Logged in!"'
    			redirect_to  '/posts/index'
  			else
    			flash[:error]  = "Invalid email or password"
    			#redirect_to :action => 'show' 
    			@user =User.new
    			render "new" 
  			end

  end

  def show
  end
  def destroy
       session[:user_id]=nil
    redirect_to :action => 'new'
  end


end
