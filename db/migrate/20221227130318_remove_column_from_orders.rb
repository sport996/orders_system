class RemoveColumnFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :cashier_id, :string
  end
end
