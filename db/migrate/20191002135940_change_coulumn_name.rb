class ChangeCoulumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :user_id, :user
  end
end
