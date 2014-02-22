class CreateFlashlightGalleries < ActiveRecord::Migration
  def change
    create_table :flashlight_galleries do |t|
      t.integer :flashlight_id
      t.string :image

      t.timestamps
    end
  end
end
