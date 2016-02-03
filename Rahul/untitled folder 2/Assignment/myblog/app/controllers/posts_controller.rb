class PostsController < ApplicationController
  def new
    @post=Post.new
    
  end

  def index
     @post=Post.new
     @tag=Tag.new
     @comment=Comment.new
     @posts = Post.all
     @coments =Comment.all
     @tags = Tag.all
     @categories = Category.all
     @category = Category.new

     @post_tag = @post.post_tags.build
  end

  
  def create



    p params
    current_user = User.find_by_id(session[:user_id])
    
       #raise params.inspect
     params["post"].merge!(user_id: current_user.id)
       #puts "-------------------- #{current_user.id} ------------------------------"
    # p params
      @post=Post.new(params.require(:post).permit(:user_id , :title,:description ,:category_id))

      if @post.save

        @posts = Post.all
        @comments= Comment.all
        redirect_to :action => 'index'
      end

  end

  def update
  end

  def edit
  end

  def destroy

  end

  def delete
  end
  
  
end
