class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [ :index, :show ]
  respond_to :html

  def index
    @tags = Tag.all
    respond_with(@tags)
  end

  def show
      @comment = Comment.new
      @tag = Tag.find_by_permalink(params[:id])
      @posttag =Posttag.where(:tag_id => @tag.id)
  end

  def new
    @tag = Tag.new
    respond_with(@tag)
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
   redirect_to categories_path
  end

  def update
    @tag.update(tag_params)
    respond_with(@tag)
  end

  def destroy
    @tag.destroy
    respond_with(@tag)
  end

  private
    def set_tag
      @tag = Tag.find_by_permalink(params[:id])
    end

    def tag_params
     params["tag"].merge!(user_id: current_user.id)
      params.require(:tag).permit(:title , :user_id)
    end
end
