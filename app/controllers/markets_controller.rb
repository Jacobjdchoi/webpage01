class MarketsController < ApplicationController
  # GET /markets
  def index
    @markets = Market.all
  end

end
