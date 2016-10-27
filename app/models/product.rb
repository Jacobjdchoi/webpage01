class Product < ActiveRecord::Base
    has_many :photos, dependent: :destroy
    accepts_nested_attributes_for :photos, allow_destroy: true

    belongs_to :brand
    belongs_to :product_type
    mount_uploader :attachment, AttachmentUploader
    #add presence validation for attachment b4 deploying
    validates :name, :presence => true

    def title
        self.series_name
    end
end
