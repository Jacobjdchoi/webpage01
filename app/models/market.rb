class Market < ActiveRecord::Base
    has_and_belongs_to_many :products
    
    def title
        self.industry_name
    end
end
