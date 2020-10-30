class CreateFinancingtypes < ActiveRecord::Migration[6.0]
  def change
    create_table :financingtypes do |t|
      t.string :month
      t.integer :year
      t.string :region
      t.string :area_code
      t.decimal :average_price
      t.decimal :cash_price
      t.decimal :mortgage_price
      t.references :locations, null: false, foreign_key: true

      t.timestamps
    end
  end
end
