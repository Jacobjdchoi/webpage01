class Brand < ActiveRecord::Base
    has_many :photos, as: :images, dependent: :destroy
    accepts_nested_attributes_for :photos, allow_destroy: true

    translates :summary, :text
    globalize_accessors attributes: [:summary]
    has_many :brand_product_types, dependent: :destroy
    has_many :product_types, through: :brand_product_types
    has_many :products, through: :product_types
    validates :name, presence: true
    validates :photos, presence: true
    validates :background_pic, presence: true

    mount_uploader :background_pic, PicsUploader

    attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
    def title
        self.name
    end
end
