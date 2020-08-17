class AddOverlookingToStunningViews < ActiveRecord::Migration[6.0]
  def change
    add_column :stunning_views, :overlooking, :integer, default: 0, index: true
  end
end
