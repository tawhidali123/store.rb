class DropBags < ActiveRecord::Migration[6.0]
  def change
    drop_table :bags
  end
end
