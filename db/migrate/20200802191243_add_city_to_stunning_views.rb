class AddCityToStunningViews < ActiveRecord::Migration[6.0]
  def change
    add_column :stunning_views, :city, :string
  end
end
