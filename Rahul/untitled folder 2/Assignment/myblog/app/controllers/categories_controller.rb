class CategoriesController < ApplicationController
  def new
  end

  def create

  	current_user = User.find_by_id(session[:user_id])
    
       #raise params.inspect
     params["category"].merge!(user_id: current_user.id)

     @category = Category.new(params.require(:category).permit(:title , :user_id))
     if @category.save
     					@category=Category.new	
     					@categories=Category.all	
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
