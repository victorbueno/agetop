class ChangeLinkColumns < ActiveRecord::Migration
  def up
    change_column :links, :page_id, :integer
    change_column :links, :post_id, :integer
  end

  def down
    change_column :links, :page_id, :string
    change_column :links, :post_id, :string
  end
end
