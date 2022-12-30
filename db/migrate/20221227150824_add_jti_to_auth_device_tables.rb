class AddJtiToAuthDeviceTables < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :jti, :string, null: false
    add_index :admins, :jti, unique: true

    add_column :cashiers, :jti, :string, null: false
    add_index :cashiers, :jti, unique: true

    add_column :shop_owners, :jti, :string, null: false
    add_index :shop_owners, :jti, unique: true

    add_column :buyers, :jti, :string, null: false
    add_index :buyers, :jti, unique: true
  end
end
