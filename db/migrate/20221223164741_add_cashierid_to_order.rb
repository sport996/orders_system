class AddCashieridToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference(:orders, :cashier_id, foreign_key: { to_table: :users })
  end
end
