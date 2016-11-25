class Customer < ActiveRecord::Base
  has_many :photos, as: :images, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  validates :name, :presence => true
  validates :name, :uniqueness => true

  # globalize
  translates :name, :string
  # globalize form attr
  globalize_accessors attribute: [:name]
end
