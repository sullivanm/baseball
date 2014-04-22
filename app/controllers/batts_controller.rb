class BattsController < ApplicationController
  before_action :set_batt, only: [:show, :edit, :update, :destroy]

  # GET /batts
  # GET /batts.json
  def index
    @batts = Batt.all
  end

  # GET /batts/1
  # GET /batts/1.json
  def show
  end

  # GET /batts/new
  def new
    @batt = Batt.new
  end

  # GET /batts/1/edit
  def edit
  end

  # POST /batts
  # POST /batts.json
  def create
    @batt = Batt.new(batt_params)

    respond_to do |format|
      if @batt.save
        format.html { redirect_to @batt, notice: 'Batt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @batt }
      else
        format.html { render action: 'new' }
        format.json { render json: @batt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batts/1
  # PATCH/PUT /batts/1.json
  def update
    respond_to do |format|
      if @batt.update(batt_params)
        format.html { redirect_to @batt, notice: 'Batt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @batt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batts/1
  # DELETE /batts/1.json
  def destroy
    @batt.destroy
    respond_to do |format|
      format.html { redirect_to batts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batt
      @batt = Batt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batt_params
      params.require(:batt).permit(:playerID, :yearID, :league, :teamID, :G, :AB, :R, :H, :B2, :B3, :HR, :RBI, :SB, :CS)
    end
end
