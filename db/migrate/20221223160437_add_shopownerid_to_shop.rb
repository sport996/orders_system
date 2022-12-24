class AddShopowneridToShop < ActiveRecord::Migration[7.0]
  def change
    add_reference(:shops, :shop_owner_id, foreign_key: { to_table: :users })
  end
end
