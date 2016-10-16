class Brand < ActiveRecord::Base
    has_many :products
    has_many :brand_product_types, dependent: :destroy
    has_many :product_types, through: :brand_product_types
    attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
    mount_uploader :pics, PicsUploader
    #add presence validation for pics b4 deploying
    validates :name, presence: true
    after_update :crop_pics

    def crop_pics
        pics.recreate_versions! if crop_x.present?
    end

    def title
        self.name
    end
end
