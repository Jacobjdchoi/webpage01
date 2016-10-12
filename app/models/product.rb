class Product < ActiveRecord::Base
    belongs_to :brand, :dependent => :destroy
    belongs_to :product_type
    mount_uploader :attachment, AttachmentUploader
    validates :name, :attachment, :presence => true
    
    def title
        self.series_name
    end
end
