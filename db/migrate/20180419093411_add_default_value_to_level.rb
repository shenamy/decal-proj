class AddDefaultValueToLevel < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :level, :integer, default: 0
  end
end
