class AddBlockToLink < ActiveRecord::Migration
  def change
    add_column :links, :block_id, :integer
  end
end
