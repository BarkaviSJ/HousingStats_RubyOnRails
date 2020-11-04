class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  # allow users to view region wise locations
  def index 
    @locations = 
      case params[:filter_by_region]
      when "england"
        Location.where("area_code LIKE 'E%' ")
      when "scotland"
        Location.where("area_code LIKE 'S%' ")
      when "wales"
        Location.where("area_code LIKE 'W%' ")
      when "northern_ireland"
        Location.where("area_code LIKE 'N%' ")
      when "combined_areas"
        Location.where("area_code LIKE 'K%' ")
      else
        Location.all
      end 
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
      @housingtypeprice = Housingtypeprice.where(location:params[:id])
      @financingtype = Financingtype.where(location:params[:id])
      
      #display line chart comparison of cash price and mortgage price for each location 
      @monthly_cash_price = { 
          2014 => Financingtype.where(year: 2014, region: Location.find(params[:id]).region).group(:month).map(&:cash_price), 
          2019 => Financingtype.where(year: 2019, region: Location.find(params[:id]).region).group(:month).map(&:cash_price) 
      }
      
      @monthly_mortgage_price = { 
          2014 => Financingtype.where(year: 2014, region: Location.find(params[:id]).region).group(:month).map(&:mortgage_price), 
          2019 => Financingtype.where(year: 2019, region: Location.find(params[:id]).region).group(:month).map(&:mortgage_price) 
      }
      
      
       @detached = {
          2014 => Housingtypeprice.where(year: 2014, region: Location.find(params[:id]).region).group(:month).map(&:detached),
          2019 => Housingtypeprice.where(year: 2019, region: Location.find(params[:id]).region).group(:month).map(&:detached),
      }
      
      @semidetached = {
          2014 => Housingtypeprice.where(year: 2014, region: Location.find(params[:id]).region).group(:month).map(&:semidetached),
          2019 => Housingtypeprice.where(year: 2019, region: Location.find(params[:id]).region).group(:month).map(&:semidetached),
      }
      
      @terraced ={
          2014 => Housingtypeprice.where(year: 2014, region: Location.find(params[:id]).region).group(:month).map(&:terraced),
          2019 => Housingtypeprice.where(year: 2019, region: Location.find(params[:id]).region).group(:month).map(&:terraced),
      }
      
      @flat = {
          2014 => Housingtypeprice.where(year: 2014, region: Location.find(params[:id]).region).group(:month).map(&:flat),
          2019 => Housingtypeprice.where(year: 2019, region: Location.find(params[:id]).region).group(:month).map(&:flat),
      }
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def regions
    @england = Location.where("area_code LIKE 'E%'")
    @scotland = Location.where("area_code LIKE 'S%'")
    @wales = Location.where("area_code LIKE 'W%'")
    @northern_ireland = Location.where("area_code LIKE 'N%'")
    @combined_areas = Location.where("area_code LIKE 'K%'")
  end     

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:region, :area_code, :latitude, :longitude)
    end
end
