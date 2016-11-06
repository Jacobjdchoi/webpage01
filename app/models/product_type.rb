class ProductType < ActiveRecord::Base
    has_many :brand_product_types
    has_many :brands, :through => :brand_product_types
    has_many :products

    validates :name, presence: true

    translates :name
    globalize_accessors attribute: [:name]
end
