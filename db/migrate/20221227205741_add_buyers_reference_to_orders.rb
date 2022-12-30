class AddBuyersReferenceToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference(:orders, :buyers, foreign_key: true)
  end
end
