class Order < ApplicationRecord
    belongs_to :shop
    belongs_to :invoice
    has_many :Orders_Item
    has_many :items, :through => orders_item  
    belongs_to :cashier, class_name: "User"
end
