class Brand < ActiveRecord::Base
    has_many :products
    
    def title
        self.name
    end
end

