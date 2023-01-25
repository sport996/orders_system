class Shop < ApplicationRecord
    has_many :items
    has_many :orders
    has_many :Invoices
    has_many :cashiers
    belongs_to :ShopOwner

    enum category:{
        restaurants: 0,
        bookstores: 1,
        digital_stores: 2,
        other: 3
    }
end
