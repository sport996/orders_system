class CreateOrdersItems < ActiveRecord::Migration[7.0]
  def change
    create_table :orders_items do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
