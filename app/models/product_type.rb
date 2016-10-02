class ProductType < ActiveRecord::Base
    has_and_belongs_to_many :products
    
    def title
        self.product_type
    end
end
