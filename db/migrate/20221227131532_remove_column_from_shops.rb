class RemoveColumnFromShops < ActiveRecord::Migration[7.0]
  def change
    remove_column :shops, :shop_owner_id, :string
  end
end
