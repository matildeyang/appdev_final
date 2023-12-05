class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.integer :song_id
      t.string :name
      t.integer :songs_count

      t.timestamps
    end
  end
end
