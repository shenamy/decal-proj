class Fix < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :gif
    add_column :avatars, :gif, :string
  end
end
