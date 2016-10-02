class Product < ActiveRecord::Base
    belongs_to :brand
    has_and_belongs_to_many :markets
    has_and_belongs_to_many :product_types
    
    def title
        self.series_name
    end
end
