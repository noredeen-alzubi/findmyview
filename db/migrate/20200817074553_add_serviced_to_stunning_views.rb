class AddServicedToStunningViews < ActiveRecord::Migration[6.0]
  def change
    add_column :stunning_views, :serviced, :boolean, index: true
  end
end
