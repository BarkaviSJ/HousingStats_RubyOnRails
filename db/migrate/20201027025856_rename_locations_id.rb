class RenameLocationsId < ActiveRecord::Migration[6.0]
  def change
      rename_column :housingtypeprices, :locations_id, :location_id
  end
end
