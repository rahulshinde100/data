class PagesController < ApplicationController
  def new
  	@book = Book.new
   @subjects = CreateSubjects.all
  end
  def create
  	
  end
end
