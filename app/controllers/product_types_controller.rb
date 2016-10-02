class ProductTypesController < ApplicationController
    before_action :navBarParams
    def index
    end
    
    def show
    end
    
private
def navBarParams
  @productTypes = ProductType.all
  @markets = Market.all
end

end
