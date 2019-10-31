class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.integer :abv
      t.string :description
      t.string :image_url
      t.integer :brewery_id

      t.timestamps
    end
  end
end
