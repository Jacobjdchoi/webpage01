class CustomersController < ApplicationController
  before_action :navBarParams

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

private
def navBarParams
  @productTypes = ProductType.all
  @markets = Market.all
end
end
