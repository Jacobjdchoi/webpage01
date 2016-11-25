class ProductBrowserController < ApplicationController
  before_action :set_product_type, only: [:product_types]
  before_action :set_brand, only: [:brands]
  before_action :set_product, only: [:products]
  before_action :all_product_types, only: [:browser, :product_types, :brands, :products]
  before_action :all_brands, only: [:browser ,:brands, :products]

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

  def all_product_types
    @product_types = ProductType.all
  end

  def all_brands
    @brands = Brand.all
  end
end
