class ChargersController < ApplicationController
  before_action :set_charger, only: [:show, :edit, :update, :destroy]

  # GET /chargers
  # GET /chargers.json
  def index
    @chargers = Charger.all
  end

  # GET /chargers/1
  # GET /chargers/1.json
  def show
  end

  # GET /chargers/new
  def new
    @charger = Charger.new
  end

  # GET /chargers/1/edit
  def edit
  end

  # POST /chargers
  # POST /chargers.json
  def create
    @charger = Charger.new(charger_params)

    respond_to do |format|
      if @charger.save
        format.html { redirect_to @charger, notice: 'Charger was successfully created.' }
        format.json { render action: 'show', status: :created, location: @charger }
      else
        format.html { render action: 'new' }
        format.json { render json: @charger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chargers/1
  # PATCH/PUT /chargers/1.json
  def update
    respond_to do |format|
      if @charger.update(charger_params)
        format.html { redirect_to @charger, notice: 'Charger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @charger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chargers/1
  # DELETE /chargers/1.json
  def destroy
    @charger.destroy
    respond_to do |format|
      format.html { redirect_to chargers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charger
      @charger = Charger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charger_params
      params.require(:charger).permit(:name, :price, :description, :features , :image , :remote_image_url)
    end
end
