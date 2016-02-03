class ArticlesController < ApplicationController
	def new
	end
	def create
		@article = Article.new(params.require(:article).permit(:title,:text))
		@article.save
		redirect_to :action => 'show'
	end
	def show
		@article=Article.find(params[:id])
		
	end
	
end
