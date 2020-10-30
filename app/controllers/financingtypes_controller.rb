class FinancingtypesController < ApplicationController
  before_action :set_financingtype, only: [:show, :edit, :update, :destroy]

  # GET /financingtypes
  # GET /financingtypes.json
  def index
    @financingtypes = Financingtype.all
  end

  # GET /financingtypes/1
  # GET /financingtypes/1.json
  def show
  end

  # GET /financingtypes/new
  def new
    @financingtype = Financingtype.new
  end

  # GET /financingtypes/1/edit
  def edit
  end

  # POST /financingtypes
  # POST /financingtypes.json
  def create
    @financingtype = Financingtype.new(financingtype_params)

    respond_to do |format|
      if @financingtype.save
        format.html { redirect_to @financingtype, notice: 'Financingtype was successfully created.' }
        format.json { render :show, status: :created, location: @financingtype }
      else
        format.html { render :new }
        format.json { render json: @financingtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financingtypes/1
  # PATCH/PUT /financingtypes/1.json
  def update
    respond_to do |format|
      if @financingtype.update(financingtype_params)
        format.html { redirect_to @financingtype, notice: 'Financingtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @financingtype }
      else
        format.html { render :edit }
        format.json { render json: @financingtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financingtypes/1
  # DELETE /financingtypes/1.json
  def destroy
    @financingtype.destroy
    respond_to do |format|
      format.html { redirect_to financingtypes_url, notice: 'Financingtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financingtype
      @financingtype = Financingtype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financingtype_params
      params.require(:financingtype).permit(:month, :year, :region, :area_code, :average_price, :cash_price, :mortgage_price, :locations_id)
    end
end
