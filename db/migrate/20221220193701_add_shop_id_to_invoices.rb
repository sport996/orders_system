class AddShopIdToInvoices < ActiveRecord::Migration[7.0]
  def change
    add_reference(:invoices,:shop, foreign_key: true)
  end
end
