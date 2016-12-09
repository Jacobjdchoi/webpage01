class Market < ApplicationRecord
  has_many :marketapps
  translates :name, :string
  globalize_accessors attributes: [:name]

end
