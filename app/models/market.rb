class Market < ApplicationRecord
  has_many :marketapps
  translates :name, :string
  globalize_accessors attributes: [:name]

  mount_uploader :banner, PicsUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
end
