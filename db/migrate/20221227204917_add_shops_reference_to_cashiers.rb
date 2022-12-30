class AddShopsReferenceToCashiers < ActiveRecord::Migration[7.0]
  def change
    add_reference(:cashiers, :shops, foreign_key: true)
  end
end
