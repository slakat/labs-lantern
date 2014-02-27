class CreateAccessoryGalleries < ActiveRecord::Migration
  def change
    create_table :accessory_galleries do |t|
      t.integer :accessory_id
      t.string :image

      t.timestamps
    end
  end
end
