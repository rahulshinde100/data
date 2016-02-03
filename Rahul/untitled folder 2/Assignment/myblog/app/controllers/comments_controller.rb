		class CommentsController < ApplicationController
		  def new

		  end

		  def create
		  		
		  	   current_user = User.find_by_id(session[:user_id])
    			
		  	   	p '************************************************'

				p params
			
			
			params["comment"].merge!(:user_id => current_user.id )
		  
		  	@comment = Comment.new(params.require(:comment).permit( :user_id , :post_id , :comment_string ))
		  	#p params
		  		if @comment.save
		  				
		  				
     					@posts = Post.all

     					@post=Post.new
     					@comment=Comment.new
     					@coments=Comment.all
        				redirect_to :posts_index

		  		end


		  end
		end
