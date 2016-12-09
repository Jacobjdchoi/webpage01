class MarketsController < ApplicationController
  # GET /markets
  # GET /markets.json
  def index
    @markets = Market.all
  end

end
