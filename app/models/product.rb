class Product < ActiveRecord::Base
    belongs_to :brand
    
    def title
        self.series_name
    end
end
