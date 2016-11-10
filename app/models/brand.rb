class Brand < ActiveRecord::Base
    has_many :photos, dependent: :destroy
    accepts_nested_attributes_for :photos, allow_destroy: true
    serialize :attachments, Array # crucial for multi-upload
    mount_uploaders :attachments, AttachmentUploader

    has_many :products, dependent: :destroy
    has_many :brand_product_types, dependent: :destroy
    has_many :product_types, through: :brand_product_types
    validates :name, presence: true

    def title
        self.name
    end
end
