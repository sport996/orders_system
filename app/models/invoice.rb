class Invoice < ApplicationRecord
    belongs_to :shop
    has_many :orders

    enum status:{
        in_progress: 0,
        issued: 1
    }
end
