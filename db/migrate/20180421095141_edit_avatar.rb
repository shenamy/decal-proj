class EditAvatar < ActiveRecord::Migration[5.1]
  def change
    remove_column :avatars, :index
    add_column :avatars, :name, :string
    add_column :users, :gif, :string
  end
end
