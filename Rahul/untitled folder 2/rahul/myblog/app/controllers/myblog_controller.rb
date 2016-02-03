class MyblogController < ApplicationController
  def new
    @article=Article.all
  end

  def create

  #@article = Article.new(article_params)  #
  @article = Article.new(params.require(:articles).permit(:title,:text))
   #  @article = Article.new(params[:article])
 
    @article.save
    redirect_to :action => 'show'
  end

  def show
     @article = Article.all
  end

  def edit
  end

  def delete
  end

  def update
  end
end
