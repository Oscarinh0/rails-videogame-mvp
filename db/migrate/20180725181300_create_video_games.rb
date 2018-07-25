class CreateVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.text :name
      t.text :genre
      t.string :image_url
      t.text :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
