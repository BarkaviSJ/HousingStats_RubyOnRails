class RenameLocationId < ActiveRecord::Migration[6.0]
  def change
      rename_column :financingtypes, :locations_id, :location_id
  end
end
