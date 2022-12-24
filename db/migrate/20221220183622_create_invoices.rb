class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :status
      t.float :grand_total
      t.datetime :date

      t.timestamps
    end
  end
end
