class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :features
      t.string :compatible

      t.timestamps
    end
  end
end
