class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :owner_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
