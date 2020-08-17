class AddColumnToStunningViews < ActiveRecord::Migration[6.0]
  def change
    add_column :stunning_views, :free_access, :boolean, index: true
  end
end
