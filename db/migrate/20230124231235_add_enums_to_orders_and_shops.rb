class AddEnumsToOrdersAndShops < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :status
    remove_column :shops, :category
    remove_column :invoices, :status
    add_column :orders, :status, :integer, null: false
    add_column :shops, :category, :integer, null: false
    add_column :invoices, :status, :integer, null: false
  end
end
