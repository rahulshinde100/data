class Articles123sController < ApplicationController
  before_action :set_articles123, only: [:show, :edit, :update, :destroy]

  # GET /articles123s
  # GET /articles123s.json
  def index
    @articles123s = Articles123.all
  end

  # GET /articles123s/1
  # GET /articles123s/1.json
  def show
  end

  # GET /articles123s/new
  def new
    @articles123 = Articles123.new
  end

  # GET /articles123s/1/edit
  def edit
  end

  # POST /articles123s
  # POST /articles123s.json
  def create
    @articles123 = Articles123.new(articles123_params)

    respond_to do |format|
      if @articles123.save
        format.html { redirect_to @articles123, notice: 'Articles123 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @articles123 }
      else
        format.html { render action: 'new' }
        format.json { render json: @articles123.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles123s/1
  # PATCH/PUT /articles123s/1.json
  def update
    respond_to do |format|
      if @articles123.update(articles123_params)
        format.html { redirect_to @articles123, notice: 'Articles123 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @articles123.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles123s/1
  # DELETE /articles123s/1.json
  def destroy
    @articles123.destroy
    respond_to do |format|
      format.html { redirect_to articles123s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articles123
      @articles123 = Articles123.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articles123_params
      params.require(:articles123).permit(:title, :body)
    end
end
