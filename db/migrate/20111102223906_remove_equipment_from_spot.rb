class RemoveEquipmentFromSpot < ActiveRecord::Migration
  def up
    remove_column :spots, :equipment_id
  end

  def down
    add_column :spots, :equipment_id, :integer
  end
end
