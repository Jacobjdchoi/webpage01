class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :brand
  has_many :photos, as: :images, dependent: :destroy
  has_many :attachments, as: :file, dependent: :destroy

  # globalize
  translates :name, :string
  translates :summary, :text
  # globalize form attr
  globalize_accessors attributes: [:name, :summary]
end
