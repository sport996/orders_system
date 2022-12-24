class AddShopIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference(:orders, :shop, foreign_key: true)
  end
end
