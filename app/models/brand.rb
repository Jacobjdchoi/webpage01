class Brand < ActiveRecord::Base
    has_many :products
    has_and_belongs_to_many :product_types
    def title
        self.name
    end
end

