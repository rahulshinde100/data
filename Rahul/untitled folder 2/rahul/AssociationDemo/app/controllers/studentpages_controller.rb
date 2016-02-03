class StudentpagesController < ApplicationController
  def new
    @student = Student.new
    #@departments = Department.all
    #@classes = Array.new([['I', 1], ['II', 2], ['III', 3], ['IV', 4]])
    #@courses = Course.all
  end

  def create


     p '--------------------------------------------------------------'

    

        @student = Student.new(params.require( :student ).permit( :name , :std , :department_id , :course_id ))
       # @student = Student.new(params[:name]  , [:std]  , [:department_id] , [:course_id] )
         p params
        #@department = Department.new(params[:name])
        if @student.save
          redirect_to :action => 'success'

           else
         # p @login.errors
          redirect_to :action => 'new'
        end
  end

  def edit
  end

  def show
        @student= Student.all
  end

  def destroy
  end

  def delete
  end

  def find
      @student= Student.new
  
  end

  def search
    #   p '--------------------------------------------------------------'
    #  p params
      
      #@student = Student.all
      if Student.exists?(params[:student][:id])
        @students = Student.find(params[:student][:id])
      else
       
          @student= Student.new
          render :action => 'find'
    end
    
  end

  def success
  end

  def fail
  end
end
