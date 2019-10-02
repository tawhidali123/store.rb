class ChangeTheSameColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :item, :item_id
  end
end
