class Recipe1sController < ApplicationController
  before_action :set_recipe1, only: [:show, :edit, :update, :destroy]

  # GET /recipe1s
  # GET /recipe1s.json
  def index
    @recipe1s = Recipe1.all
  end

  # GET /recipe1s/1
  # GET /recipe1s/1.json
  def show
  end

  # GET /recipe1s/new
  def new
    @recipe1 = Recipe1.new
  end

  # GET /recipe1s/1/edit
  def edit
  end

  # POST /recipe1s
  # POST /recipe1s.json
  def create
    @recipe1 = Recipe1.new(recipe1_params)

    respond_to do |format|
      if @recipe1.save
        format.html { redirect_to @recipe1, notice: 'Recipe1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe1s/1
  # PATCH/PUT /recipe1s/1.json
  def update
    respond_to do |format|
      if @recipe1.update(recipe1_params)
        format.html { redirect_to @recipe1, notice: 'Recipe1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe1s/1
  # DELETE /recipe1s/1.json
  def destroy
    @recipe1.destroy
    respond_to do |format|
      format.html { redirect_to recipe1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe1
      @recipe1 = Recipe1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe1_params
      params.require(:recipe1).permit(:title, :instruction)
    end
end
