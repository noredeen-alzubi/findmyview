class DropCities < ActiveRecord::Migration[6.0]
  def up
    drop_table :cities
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
