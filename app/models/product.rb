class Product < ActiveRecord::Base
    belongs_to :brand
    belongs_to :product_type
    validates :name, :presence => true

    #heritages
    acts_as_taggable_on :heritages

    #photos
    has_many :photos, dependent: :destroy
    accepts_nested_attributes_for :photos, allow_destroy: true
    mount_uploader :attachment, AttachmentUploader

    def title
        self.series_name
    end
end
