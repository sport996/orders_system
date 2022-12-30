class Shop < ApplicationRecord
    has_many :items
    has_many :orders
    has_many :Invoices
    has_many :cashiers
    belongs_to :ShopOwner
end
