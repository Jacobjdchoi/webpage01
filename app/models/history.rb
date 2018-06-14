class History < ApplicationRecord
    # validation
    validates :title, :event_date, presence: true
    # globalize
    translates :title, :string
    # globalize form attr
    globalize_accessors attributes: [:title]
end
