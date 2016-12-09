class Marketapp < ApplicationRecord
  belongs_to :market
  translates :name, :string
  globalize_accessors attributes: [:name]

end
