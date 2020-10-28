class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :artist
      t.string :title
      t.integer :price
      t.string :genre
      t.integer :year
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
