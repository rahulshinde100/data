class TempAddressesController < ApplicationController
  before_action :set_temp_address, only: [:show, :edit, :update, :destroy]

  # GET /temp_addresses
  # GET /temp_addresses.json
  def index
    @temp_addresses = TempAddress.all
  end

  # GET /temp_addresses/1
  # GET /temp_addresses/1.json
  def show
  end

  # GET /temp_addresses/new
  def new
    @temp_address = TempAddress.new
  end

  # GET /temp_addresses/1/edit
  def edit
  end

  # POST /temp_addresses
  # POST /temp_addresses.json
  def create
    @temp_address = TempAddress.new(temp_address_params)

    respond_to do |format|
      if @temp_address.save
        format.html { redirect_to @temp_address, notice: 'Temp address was successfully created.' }
        format.json { render action: 'show', status: :created, location: @temp_address }
      else
        format.html { render action: 'new' }
        format.json { render json: @temp_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp_addresses/1
  # PATCH/PUT /temp_addresses/1.json
  def update
    respond_to do |format|
      if @temp_address.update(temp_address_params)
        format.html { redirect_to @temp_address, notice: 'Temp address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @temp_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_addresses/1
  # DELETE /temp_addresses/1.json
  def destroy
    @temp_address.destroy
    respond_to do |format|
      format.html { redirect_to temp_addresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp_address
      @temp_address = TempAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temp_address_params
      params.require(:temp_address).permit(:village, :district, :pincode, :student_id)
    end
end
