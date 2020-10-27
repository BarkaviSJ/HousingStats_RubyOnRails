class HousingtypepricesController < ApplicationController
  before_action :set_housingtypeprice, only: [:show, :edit, :update, :destroy]

  # GET /housingtypeprices
  # GET /housingtypeprices.json
  def index
    @housingtypeprices = Housingtypeprice.all
  end

  # GET /housingtypeprices/1
  # GET /housingtypeprices/1.json
  def show
  end

  # GET /housingtypeprices/new
  def new
    @housingtypeprice = Housingtypeprice.new
  end

  # GET /housingtypeprices/1/edit
  def edit
  end

  # POST /housingtypeprices
  # POST /housingtypeprices.json
  def create
    @housingtypeprice = Housingtypeprice.new(housingtypeprice_params)

    respond_to do |format|
      if @housingtypeprice.save
        format.html { redirect_to @housingtypeprice, notice: 'Housingtypeprice was successfully created.' }
        format.json { render :show, status: :created, location: @housingtypeprice }
      else
        format.html { render :new }
        format.json { render json: @housingtypeprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housingtypeprices/1
  # PATCH/PUT /housingtypeprices/1.json
  def update
    respond_to do |format|
      if @housingtypeprice.update(housingtypeprice_params)
        format.html { redirect_to @housingtypeprice, notice: 'Housingtypeprice was successfully updated.' }
        format.json { render :show, status: :ok, location: @housingtypeprice }
      else
        format.html { render :edit }
        format.json { render json: @housingtypeprice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housingtypeprices/1
  # DELETE /housingtypeprices/1.json
  def destroy
    @housingtypeprice.destroy
    respond_to do |format|
      format.html { redirect_to housingtypeprices_url, notice: 'Housingtypeprice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housingtypeprice
      @housingtypeprice = Housingtypeprice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def housingtypeprice_params
      params.require(:housingtypeprice).permit(:month, :year, :region, :area_code, :detached, :semidetached, :terraced, :flat, :locations_id)
    end
end
