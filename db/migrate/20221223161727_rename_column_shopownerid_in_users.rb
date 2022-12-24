class RenameColumnShopowneridInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column(:shops, :shop_owner_id_id, :shop_owner_id)
  end
end
