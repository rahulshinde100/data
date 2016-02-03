class TagsController < ApplicationController
  def new

  end

  def create
  		 current_user = User.find_by_id(session[:user_id])
    
				
				p '************************************************'

				p params
			
			
			params["tag"].merge!(:user_id => current_user.id )

				p '************************************************'

				p params
			

			@tag=Tag.new(params.require(:tag).permit( :tag_title , :user_id)) 
			if @tag.save

						@tag=Tag.new
						#@tags.Tag.all
						@posts = Post.all

     					@post=Post.new
     					@comment=Comment.new
     					@coments=Comment.all
        				redirect_to :posts_index
				
			end
  end
end
