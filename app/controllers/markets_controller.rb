class MarketsController < ApplicationController
  before_action :navBarParams
  # GET /markets
  # GET /markets.json
  def index
    @markets = Market.all
  end

  # GET /markets/1
  # GET /markets/1.json
  def show
  end
  
private
def navBarParams
  @productTypes = ProductType.all
  @markets = Market.all
end
 
end
