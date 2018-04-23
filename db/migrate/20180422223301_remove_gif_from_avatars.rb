class RemoveGifFromAvatars < ActiveRecord::Migration[5.1]
  def change
    remove_column :avatars, :gif
  end
end
