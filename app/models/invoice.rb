class Invoice < ApplicationRecord
    belongs_to :shop
    has_many :orders
end
