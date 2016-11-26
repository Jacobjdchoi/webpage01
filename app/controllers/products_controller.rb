class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :show, :destroy]
  before_action :crop_obj, only: [:edit, :update]
  before_action :crop_ratio, only: [:create, :update]
  before_action :all_products, only: [:index]

  def index
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      if @product.photos.present?
        @crop_obj = @product
        render 'shared/crop'
      else
        redirect_to @product
      end
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(set_product)
      if @product.photos.present?
        render 'shared/crop'
      else
        redirect_to @product
      end
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html {redirect_to products_url}
    end
  end

private
  def set_product
    @product = Product.find(params[:id])
  end
  def crop_obj
    @crop_obj = @product
  end
  def crop_ratio
    @crop_ratio = 0
  end
  def all_products
    @products = Product.all
  end
  def product_params
    params.require(:product).permit(:name, :url, :product_type_id)
  end

end
