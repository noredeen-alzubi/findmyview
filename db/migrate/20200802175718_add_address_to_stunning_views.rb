class AddAddressToStunningViews < ActiveRecord::Migration[6.0]
  def change
    add_column :stunning_views, :address, :string
  end
end
