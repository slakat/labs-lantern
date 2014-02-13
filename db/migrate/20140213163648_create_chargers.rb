class CreateChargers < ActiveRecord::Migration
  def change
    create_table :chargers do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :features

      t.timestamps
    end
  end
end
