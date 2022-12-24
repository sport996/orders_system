class RenameColumnCashieridInOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column(:orders, :cashier_id_id, :cashier_id)
  end
end
