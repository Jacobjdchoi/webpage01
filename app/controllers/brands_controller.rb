class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]
  before_action :to_crop_obj, only: [:edit, :update]
  before_action :crop_ratio, only: [:create, :update]
  before_action :authenticate_admin!, except: [:show, :index]
  before_action :all_product_types, only: [:new, :edit]

  # GET /brands
  # GET /brands.json
  def index
    @brands = Brand.all
  end

  # GET /brands/1
  # GET /brands/1.json
  def show
    respond_to do |format|
      format.js
      format.html
    end
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands
  # POST /brands.json
  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      if @brand.photos.present?
        @crop_obj = @brand
        render "shared/crop"
      else
        redirect_to @brand
      end
    else
      render :new
    end
  end

  # PATCH/PUT /brands/1
  # PATCH/PUT /brands/1.json
  def update
    if @brand.update(brand_params)
      if @brand.photos.present?
        render "shared/crop"
      else
        redirect_to @brand
      end
    else
      render :edit
    end
  end
  def crop

  end
  # DELETE /brands/1
  # DELETE /brands/1.json
  def destroy
    @brand.destroy
    respond_to do |format|
      format.html { redirect_to brands_url, notice: 'Brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    def to_crop_obj
      @crop_obj = @brand
    end

    def crop_ratio
      @crop_ratio = 1
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:name, :url, *Brand.globalize_attribute_names, {photos_attributes: [:id, :pics, :_destroy, :brand_id]}, {product_type_ids: []})
    end

    def all_product_types
      @productTypeAll = ProductType.all
    end

end
