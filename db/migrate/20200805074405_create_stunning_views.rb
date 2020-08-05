class CreateStunningViews < ActiveRecord::Migration[6.0]
  def change
    create_table :stunning_views do |t|
      t.string :title
      t.text :description
      t.boolean :car_access
      t.decimal :latitude
      t.decimal :longitude
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
