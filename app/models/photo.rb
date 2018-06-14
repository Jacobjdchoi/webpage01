class Photo < ActiveRecord::Base
  belongs_to :images, polymorphic: :true
  
  mount_uploader :pics, PicsUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_pics

  def crop_pics
    pics.recreate_versions! if crop_x.present?
    puts 'pics recreated'
  end
end
