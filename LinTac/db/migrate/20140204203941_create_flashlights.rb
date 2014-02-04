class CreateFlashlights < ActiveRecord::Migration
  def change
    create_table :flashlights do |t|
      t.string :name
      t.integer :price
      t.string :serie
      t.integer :lumens
      t.text :description

      t.timestamps
    end
  end
end
