class RemoveCityFromStunningViews < ActiveRecord::Migration[6.0]
  def change
    remove_column :stunning_views, :city, :string
  end
end
