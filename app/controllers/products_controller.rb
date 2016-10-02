class ProductsController < ApplicationController
  before_action :navBarParams
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end
  
private
def navBarParams
  @productTypes = ProductType.all
  @markets = Market.all
end

end
