class CreateChargerGalleries < ActiveRecord::Migration
  def change
    create_table :charger_galleries do |t|
      t.integer :charger_id
      t.string :image

      t.timestamps
    end
  end
end
