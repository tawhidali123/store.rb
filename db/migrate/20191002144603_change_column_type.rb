class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :shops, :user, :integer
  end
end
