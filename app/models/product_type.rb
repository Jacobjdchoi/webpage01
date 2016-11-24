class ProductType < ActiveRecord::Base
    has_many :brand_product_types
    has_many :brands, :through => :brand_product_types
    has_many :products
    has_many :photos, dependent: :destroy
    accepts_nested_attributes_for :photos, allow_destroy: true

    validates :name, presence: true

    translates :name
    globalize_accessors attribute: [:name]
end