class ProductBrowserController < ApplicationController
  before_action :set_product_type, only: [:product_types]
  before_action :all_product_types, only: [:browser, :product_types, :brands, :products]
  before_action :all_brands, only: [:browser ,:brands, :products, :product_types]

  def browser
  end

  def product_types
    @brand = @product_type.brands.first
  end

private
  def set_product_type
    @product_type = ProductType.find(params[:id])
  end

  def all_product_types
    @product_types = ProductType.all
  end

  def all_brands
    @brands = Brand.all
  end
end
