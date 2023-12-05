class RemoveSongsCountFromArtist < ActiveRecord::Migration[7.0]
  def change
    remove_column :artists, :songs_count
  end
end
