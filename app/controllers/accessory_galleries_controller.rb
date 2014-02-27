class AccessoryGalleriesController < ApplicationController
  before_action :set_accessory_gallery, only: [:show, :edit, :update, :destroy]

  # GET /accessory_galleries
  # GET /accessory_galleries.json
  def index
    @accessory_galleries = AccessoryGallery.all
  end

  # GET /accessory_galleries/1
  # GET /accessory_galleries/1.json
  def show
  end

  # GET /accessory_galleries/new
  def new
    @accessory_gallery = AccessoryGallery.new
  end

  # GET /accessory_galleries/1/edit
  def edit
  end

  # POST /accessory_galleries
  # POST /accessory_galleries.json
  def create
    @accessory_gallery = AccessoryGallery.new(accessory_gallery_params)

    respond_to do |format|
      if @accessory_gallery.save
        format.html { redirect_to @accessory_gallery, notice: 'Accessory gallery was successfully created.' }
        format.json { render action: 'show', status: :created, location: @accessory_gallery }
      else
        format.html { render action: 'new' }
        format.json { render json: @accessory_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessory_galleries/1
  # PATCH/PUT /accessory_galleries/1.json
  def update
    respond_to do |format|
      if @accessory_gallery.update(accessory_gallery_params)
        format.html { redirect_to @accessory_gallery, notice: 'Accessory gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accessory_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessory_galleries/1
  # DELETE /accessory_galleries/1.json
  def destroy
    @accessory_gallery.destroy
    respond_to do |format|
      format.html { redirect_to accessory_galleries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessory_gallery
      @accessory_gallery = AccessoryGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessory_gallery_params
      params.require(:accessory_gallery).permit(:accessory_id, :image , :remote_image_url)
    end
end
