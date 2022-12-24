class AddOrderidAndItemidToOrdersItems < ActiveRecord::Migration[7.0]
  def change
    add_reference(:orders_items,:items, foreign_key: true)
    add_reference(:orders_items,:orders, foreign_key: true)
  end
end
