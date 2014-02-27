class ChargerGalleriesController < ApplicationController
  before_action :set_charger_gallery, only: [:show, :edit, :update, :destroy]

  # GET /charger_galleries
  # GET /charger_galleries.json
  def index
    @charger_galleries = ChargerGallery.all
  end

  # GET /charger_galleries/1
  # GET /charger_galleries/1.json
  def show
  end

  # GET /charger_galleries/new
  def new
    @charger_gallery = ChargerGallery.new
  end

  # GET /charger_galleries/1/edit
  def edit
  end

  # POST /charger_galleries
  # POST /charger_galleries.json
  def create
    @charger_gallery = ChargerGallery.new(charger_gallery_params)

    respond_to do |format|
      if @charger_gallery.save
        format.html { redirect_to @charger_gallery, notice: 'Charger gallery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @charger_gallery }
      else
        format.html { render action: 'new' }
        format.json { render json: @charger_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charger_galleries/1
  # PATCH/PUT /charger_galleries/1.json
  def update
    respond_to do |format|
      if @charger_gallery.update(charger_gallery_params)
        format.html { redirect_to @charger_gallery, notice: 'Charger gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @charger_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charger_galleries/1
  # DELETE /charger_galleries/1.json
  def destroy
    @charger_gallery.destroy
    respond_to do |format|
      format.html { redirect_to charger_galleries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charger_gallery
      @charger_gallery = ChargerGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charger_gallery_params
      params.require(:charger_gallery).permit(:charger_id, :image , :remote_image_url)
    end
end
