class Product < ActiveRecord::Base
    belongs_to :brand
    belongs_to :product_type
    
    def title
        self.series_name
    end
end
