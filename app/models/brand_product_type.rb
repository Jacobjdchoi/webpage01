class BrandProductType < ActiveRecord::Base
    belongs_to :brand
    belongs_to :product_type
end
