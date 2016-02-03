class CoursepagesController < ApplicationController
  def new
    @course = Course.new
    #@departments = Department.all
  end

  def create

        p '--------------------------------------------------------------'

        p params

        @course = Course.new(params.require( :course ).permit( :name , :department_id ))
        #@department = Department.new(params[:name])
        if @course.save
          redirect_to :action => 'success'
        else 
          render :action => 'new'
        end

  end

  def edit
  end

  def show


    @courses= Course.all
  end

  def destroy
  end

  def delete
  end

  def find
    @course= Course.new
  end

  def search

    if Course.exists?(params[:course][:id])
        @courses = Course.find(params[:course][:id])
      else
       
          @course= Course.new
          render :action => 'find'
    end
  end

  def success
  end

  def fail
  end
end
