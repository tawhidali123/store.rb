class ChangeColumnNameAgain < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :user, :user_id
  end
end
