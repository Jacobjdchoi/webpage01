class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :brand
  has_many :images
  has_many :files
end
