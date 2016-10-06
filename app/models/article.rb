class Article < ActiveRecord::Base
    mount_uploader :pics, PicsUploader
    attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
    after_update :crop_pics
    validates :title, :body, :presence => true
    
    def crop_pics
        pics.recreate_versions! if crop_x.present?
    end
end
