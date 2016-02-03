class CommentsController < ApplicationController
    before_filter :authenticate_user!, :except => [ :index, :show ]
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to :back
  end

  def update
    @comment.update(comment_params)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    redirect_to :back
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params["comment"].merge!(user_id: current_user.id)
      params.require(:comment).permit(:comment_string , :user_id , :post_id)
    end
end
