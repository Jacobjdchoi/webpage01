class Article < ActiveRecord::Base
  # photo
  has_many :photos, as: :images ,dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  # validation
  validates :title, :summary, presence: true
  # globalize
  translates :title, :string
  translates :summary, :text
  # globalize form attr
  globalize_accessors attributes: [:title, :summary]
end
