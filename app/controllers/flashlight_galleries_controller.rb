class FlashlightGalleriesController < ApplicationController
  before_action :set_flashlight_gallery, only: [:show, :edit, :update, :destroy]

  # GET /flashlight_galleries
  # GET /flashlight_galleries.json
  def index
    @flashlight_galleries = FlashlightGallery.all
  end

  # GET /flashlight_galleries/1
  # GET /flashlight_galleries/1.json
  def show
  end

  # GET /flashlight_galleries/new
  def new
    @flashlight_gallery = FlashlightGallery.new
  end

  # GET /flashlight_galleries/1/edit
  def edit
  end

  # POST /flashlight_galleries
  # POST /flashlight_galleries.json
  def create
    @flashlight_gallery = FlashlightGallery.new(flashlight_gallery_params)

    respond_to do |format|
      if @flashlight_gallery.save
        format.html { redirect_to @flashlight_gallery, notice: 'Flashlight gallery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flashlight_gallery }
      else
        format.html { render action: 'new' }
        format.json { render json: @flashlight_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flashlight_galleries/1
  # PATCH/PUT /flashlight_galleries/1.json
  def update
    respond_to do |format|
      if @flashlight_gallery.update(flashlight_gallery_params)
        format.html { redirect_to @flashlight_gallery, notice: 'Flashlight gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flashlight_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flashlight_galleries/1
  # DELETE /flashlight_galleries/1.json
  def destroy
    @flashlight_gallery.destroy
    respond_to do |format|
      format.html { redirect_to flashlight_galleries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flashlight_gallery
      @flashlight_gallery = FlashlightGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flashlight_gallery_params
      params.require(:flashlight_gallery).permit(:flashlight_id, :image , :remote_image_url)
    end
end
