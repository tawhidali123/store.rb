class ChandeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :item_id, :item
  end
end
