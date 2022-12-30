class AddShopOwnerReferenceToShops < ActiveRecord::Migration[7.0]
  def change
    add_reference(:shops, :shop_owners, foreign_key: true)
  end
end
