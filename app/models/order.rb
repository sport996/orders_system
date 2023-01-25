class Order < ApplicationRecord
    belongs_to :shop
    belongs_to :invoice
    has_many :Orders_Item
    has_many :items, :through => orders_item
    belongs_to :buyer

    enum status:{
        Placed: 0,
        Picked_up: 1,
        Delivered: 2
    }
end
