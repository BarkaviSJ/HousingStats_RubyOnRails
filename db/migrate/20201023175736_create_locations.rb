class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :region
      t.string :area_code
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
