class UpdateForLocationColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column(:shops, :location)
    add_column(:shops,:lat, :float)
    add_column(:shops,:long, :float)
  end
end
