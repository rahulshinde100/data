class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
 before_filter :authenticate_user!, :except => [ :index, :show ]
  respond_to :html

  def index
    @categories = Category.all
    respond_with(@categories)
  end

  def show

   # raise params.inspect
   @category = Category.find_by_permalink(params[:id])
   #raise @category.inspect
    @post =Post.where(:category_id => @category.id)
  end

  def new
    @category = Category.new
    respond_with(@category)
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    @category.save

      respond_to do |format|
       if @category.save
      flash[:success] = 'Category was successfully created.'
      format.html { respond_with(@category) }
      format.json { render :show, status: :created, location: @category }
    else
      flash[:danger] = 'There was a problem creating the Category.'
      format.html { render :new }
      format.json { render json: @category.errors, status: :unprocessable_entity }
    end
end


  #  respond_with(@category)
  end

  def update
     respond_to do |format|
    if @category.update(category_params)
      flash[:success] = 'Category was successfully updated.'
      format.html { redirect_to @category }
      format.json { render :show, status: :ok, location: @todo }
    else
      flash[:danger] = 'There was a problem updating the Category.'
      format.html { render :edit }
      format.json { render json: @category.errors, status: :unprocessable_entity }
    end
  end

  end

  def destroy


    @category.destroy
     respond_to do |format|
  flash[:success] = 'Category was successfully destroyed.'
  format.html { redirect_to categories_url }

      format.json { head :no_content }
  end
end

  private
    def set_category
       @category = Category.find_by_permalink(params[:id])
    end

    def category_params
      params["category"].merge!(user_id: current_user.id)
      params.require(:category).permit(:title , :user_id)
    end
end
