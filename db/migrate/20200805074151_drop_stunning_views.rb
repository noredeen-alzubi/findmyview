class DropStunningViews < ActiveRecord::Migration[6.0]
  def up
    drop_table :stunning_views
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
