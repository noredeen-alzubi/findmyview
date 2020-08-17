class AddFamilyToStunningViews < ActiveRecord::Migration[6.0]
  def change
    add_column :stunning_views, :family_friendly, :boolean, index: true
  end
end
