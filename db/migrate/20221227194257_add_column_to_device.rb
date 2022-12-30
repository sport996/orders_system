class AddColumnToDevice < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :username, :string
    add_column :admins, :phone_number, :integer

    add_column :cashiers, :username, :string
    add_column :cashiers, :phone_number, :integer

    add_column :shop_owners, :username, :string
    add_column :shop_owners, :phone_number, :integer

    add_column :buyers, :username, :string
    add_column :buyers, :phone_number, :integer
  end
end
