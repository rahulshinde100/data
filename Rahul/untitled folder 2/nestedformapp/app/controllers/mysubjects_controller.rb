class MysubjectsController < ApplicationController
  before_action :set_mysubject, only: [:show, :edit, :update, :destroy]

  # GET /mysubjects
  # GET /mysubjects.json
  def index
    @mysubjects = Mysubject.all
  end

  # GET /mysubjects/1
  # GET /mysubjects/1.json
  def show
  end

  # GET /mysubjects/new
  def new
    @mysubject = Mysubject.new
  end

  # GET /mysubjects/1/edit
  def edit
  end

  # POST /mysubjects
  # POST /mysubjects.json
  def create
    @mysubject = Mysubject.new(mysubject_params)

    respond_to do |format|
      if @mysubject.save
        format.html { redirect_to @mysubject, notice: 'Mysubject was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mysubject }
      else
        format.html { render action: 'new' }
        format.json { render json: @mysubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mysubjects/1
  # PATCH/PUT /mysubjects/1.json
  def update
    respond_to do |format|
      if @mysubject.update(mysubject_params)
        format.html { redirect_to @mysubject, notice: 'Mysubject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mysubject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mysubjects/1
  # DELETE /mysubjects/1.json
  def destroy
    @mysubject.destroy
    respond_to do |format|
      format.html { redirect_to mysubjects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mysubject
      @mysubject = Mysubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mysubject_params
      params.require(:mysubject).permit(:my_subjects)
    end
end
