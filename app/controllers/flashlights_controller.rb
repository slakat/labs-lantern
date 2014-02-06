class FlashlightsController < ApplicationController
  before_action :set_flashlight, only: [:show, :edit, :update, :destroy]

  # GET /flashlights
  # GET /flashlights.json
  def index
    @flashlights = Flashlight.all
  end

  # GET /flashlights/1
  # GET /flashlights/1.json
  def show
  end

  # GET /flashlights/new
  def new
    @flashlight = Flashlight.new
  end

  # GET /flashlights/1/edit
  def edit
  end

  # POST /flashlights
  # POST /flashlights.json
  def create
    @flashlight = Flashlight.new(flashlight_params)

    respond_to do |format|
      if @flashlight.save
        format.html { redirect_to @flashlight, notice: 'Flashlight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flashlight }
      else
        format.html { render action: 'new' }
        format.json { render json: @flashlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flashlights/1
  # PATCH/PUT /flashlights/1.json
  def update
    respond_to do |format|
      if @flashlight.update(flashlight_params)
        format.html { redirect_to @flashlight, notice: 'Flashlight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flashlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flashlights/1
  # DELETE /flashlights/1.json
  def destroy
    @flashlight.destroy
    respond_to do |format|
      format.html { redirect_to flashlights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashlight
      @flashlight = Flashlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flashlight_params
      params.require(:flashlight).permit(:name, :price, :serie, :lumens, :description)
    end
end
