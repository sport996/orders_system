class ChangePhoneNumberType < ActiveRecord::Migration[7.0]
  def change
    change_column(:admins, :phone_number, :string)
    change_column(:buyers, :phone_number, :string)
    change_column(:shop_owners, :phone_number, :string)
    change_column(:cashiers, :phone_number, :string)
  end
end
