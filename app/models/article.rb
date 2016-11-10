class Article < ActiveRecord::Base
  # photo
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  # validation
  validates :title, :body, presence: true
  # globalize
  translates :title, :string
  translates :body, :text
  # globalize form attr
  globalize_accessors attributes: [:title, :body]
end
