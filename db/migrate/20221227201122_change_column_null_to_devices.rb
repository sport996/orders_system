class ChangeColumnNullToDevices < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:admins, :username, false)
    change_column_null(:admins, :phone_number, false)

    change_column_null(:cashiers, :username, false)
    change_column_null(:cashiers, :phone_number, false)

    change_column_null(:shop_owners, :username, false)
    change_column_null(:shop_owners, :phone_number, false)

    change_column_null(:buyers, :username, false)
    change_column_null(:buyers, :phone_number, false)
  end
end
