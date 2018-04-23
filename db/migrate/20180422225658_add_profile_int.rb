class AddProfileInt < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :pic, :integer, default: 0
  end
end
