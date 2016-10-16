class Product < ActiveRecord::Base
    belongs_to :brand, :dependent => :destroy
    belongs_to :product_type
    mount_uploader :attachment, AttachmentUploader
    #add presence validation for attachment b4 deploying
    validates :name, :presence => true

    def title
        self.series_name
    end
end
