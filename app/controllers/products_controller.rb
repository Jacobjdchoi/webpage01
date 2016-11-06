class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :to_crop_obj, only: [:edit, :update]


  # GET /products
  # GET /products.json
  def index
    if params[:heritage]
      @products = Product.tagged_with(params[:heritage])
    else
      @products = Product.all
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    respond_to do |format|
      format.js
      format.html
    end
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        if @product.photos.present?
          @crop_obj = @product
          render "shared/crop"
        else
          format.html { redirect_to @product, notice: 'Product was successfully created.' }
          format.json { render :show, status: :created, location: @product }
        end
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        if @product.photos.present?
          render "shared/crop"
        else
          format.html { redirect_to @product, notice: 'Product was successfully updated.' }
          format.json { render :show, status: :ok, location: @product }
        end
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def to_crop_obj
      @crop_obj = @product
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :attachment, :brand_id, :heritage_list, photos_attributes: [:id, :pics, :_destroy, :product_id])
    end
end
