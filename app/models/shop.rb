class Shop < ApplicationRecord
    has_many :items
    has_many :orders
    has_many :Invoices
    has_many :cashier, class_name: "user"
    belongs_to :shop_owner, class_name: "User"
end
