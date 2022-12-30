class DropUsersTable < ActiveRecord::Migration[7.0]
  def change
        drop_table(User)

  end
end
