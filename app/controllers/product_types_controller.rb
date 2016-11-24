class ProductTypesController < ApplicationController
  before_action :set_product_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :index]
  before_action :to_crop_obj, only: [:edit, :update]
  before_action :crop_ratio, only: [:create, :update]

  # GET /product_types
  # GET /product_types.json
  def index
    @product_types = ProductType.all
  end

  def admin_index
    @pt = ProductType.all
  end

  # GET /product_types/1
  # GET /product_types/1.json
  def show
    @brands = @product_type.brands
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /product_types/new
  def new
    @product_type = ProductType.new
  end

  # GET /product_types/1/edit
  def edit
  end

  # POST /product_types
  # POST /product_types.json
  def create
   @product_type = ProductType.new(product_type_params)
    if @product_type.save
      if @product_type.photos.present?
        @crop_obj = @product_type
        render "shared/crop"
      else
        redirect_to @product_type
      end
    else
      render :new
    end
  end

  # PATCH/PUT /product_types/1
  # PATCH/PUT /product_types/1.json
  def update
    if @product_type.update(product_type_params)
      if @product_type.photos.present?
        render "shared/crop"
      else
        redirect_to @product_type
      end
    else
      render :edit
    end
  end
  
  def crop
    
  end
  
  # DELETE /product_types/1
  # DELETE /product_types/1.json
  def destroy
    @product_type.destroy
    respond_to do |format|
      format.html { redirect_to product_types_url, notice: 'Product type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_type
      @product_type = ProductType.find(params[:id])
    end
    
    def to_crop_obj
      @crop_obj = @product_type
    end

    def crop_ratio
      @crop_ratio = 0
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_type_params
      params.require(:product_type).permit(*ProductType.globalize_attribute_names,  {photos_attributes: [:id, :pics, :_destroy, :product_type_id]})
    end
end
