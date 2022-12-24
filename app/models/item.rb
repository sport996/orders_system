class Item < ApplicationRecord
    belongs_to :shop
    has_many :Orders_Item
    has_many :orders, :through => orders_item  
end
