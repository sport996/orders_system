class AddInvoiceidToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference(:orders,:invoice, foreign_key: true)
  end
end
