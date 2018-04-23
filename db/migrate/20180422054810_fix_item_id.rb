class FixItemId < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :item_id, :integer, default: -1
  end
end
