class ImagedemosController < ApplicationController
  before_action :set_imagedemo, only: [:show, :edit, :update, :destroy]

  # GET /imagedemos
  # GET /imagedemos.json
  def index
    @imagedemos = Imagedemo.all
  end

  # GET /imagedemos/1
  # GET /imagedemos/1.json
  def show
  end

  # GET /imagedemos/new
  def new
    @imagedemo = Imagedemo.new
  end

  # GET /imagedemos/1/edit
  def edit
  end

  # POST /imagedemos
  # POST /imagedemos.json
  def create
    @imagedemo = Imagedemo.new(imagedemo_params)

    respond_to do |format|
      if @imagedemo.save
        format.html { redirect_to @imagedemo, notice: 'Imagedemo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @imagedemo }
      else
        format.html { render action: 'new' }
        format.json { render json: @imagedemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagedemos/1
  # PATCH/PUT /imagedemos/1.json
  def update
    respond_to do |format|
      if @imagedemo.update(imagedemo_params)
        format.html { redirect_to @imagedemo, notice: 'Imagedemo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @imagedemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagedemos/1
  # DELETE /imagedemos/1.json
  def destroy
    @imagedemo.destroy
    respond_to do |format|
      format.html { redirect_to imagedemos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagedemo
      @imagedemo = Imagedemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagedemo_params
      params.require(:imagedemo).permit(:fname, :lname, :image)
    end
end
