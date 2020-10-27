class CreateHousingtypeprices < ActiveRecord::Migration[6.0]
  def change
    create_table :housingtypeprices do |t|
      t.string :month
      t.integer :year
      t.string :region
      t.string :area_code
      t.decimal :detached
      t.decimal :semidetached
      t.decimal :terraced
      t.decimal :flat
      t.references :locations, null: false, foreign_key: true

      t.timestamps
    end
  end
end
