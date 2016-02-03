class DepartmentpagesController < ApplicationController
  def new
    @department = Department.new
  end

  def create

        p '--------------------------------------------------------------'

        p params

        @department = Department.new(params.require( :department).permit( :name ))
        #@department = Department.new(params[:name])
        if @department.save
          redirect_to :action => 'success'
           else 
              render :action => 'new'
        end
  end


  def getcodedept

      @department= Department.new
    
  end



  def edit
       if Department.exists?(params[:department][:id])
        @department = Department.find(params[:department][:id])
      else
       
          @department= Department.new
          render :action => 'edit'
    end

  end

  def modify

      @department = Department.find(params[:department][:id] , [:department][:name])

      if @department.modify

            render '../home/index'
        
      end
       
  end

  def show
       @departments = Department.all
  end

  def destroy

  end

  def delete

  end



  def find
    @department = Department.new

  end

  def search

    if Department.exists?(params[:department][:id])
        @departments = Department.find(params[:department][:id])
      else
       
          @department= Department.new
          render :action => 'find'
    end

  end

  def success

  end

  def fail

  end
end
