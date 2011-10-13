class AddMissingFieldsToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :address, :string
    add_column :equipment, :district, :string
    add_column :equipment, :active, :boolean
  end
end
