class Customer < ActiveRecord::Base
    
    def title
        self.name
    end
end
