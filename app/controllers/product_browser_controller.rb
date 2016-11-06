class ProductBrowserController < ApplicationController
  before_action :set_product_type, only: [:product_types]
  before_action :set_brand, only: [:brands]
  before_action :set_product, only: [:products]
  before_action :product_types_tab, only: [:browser, :product_types, :brands, :products]
  before_action :brands_tab, only: [:brands, :products]

  def browser
  end

  def product_types
  end

  def brands
  end

private
  def set_product_type
    @product_type = ProductType.find(params[:id])
  end

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_types_tab
    @product_types = ProductType.all
  end

  def brands_tab
    @brands = Brand.all
  end
end
