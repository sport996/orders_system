class AddUniquePropertyToDevicesUsername < ActiveRecord::Migration[7.0]
  def change
    execute <<-SQL
      ALTER TABLE Admins
      ADD UNIQUE (username);

      ALTER TABLE Cashiers
      ADD UNIQUE (username);

      ALTER TABLE Buyers
      ADD UNIQUE (username);

      ALTER TABLE Shop_owners
      ADD UNIQUE (username);
    SQL
  end
end
