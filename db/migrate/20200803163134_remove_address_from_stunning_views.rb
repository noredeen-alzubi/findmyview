class RemoveAddressFromStunningViews < ActiveRecord::Migration[6.0]
  def change
    remove_column :stunning_views, :address, :string
  end
end
