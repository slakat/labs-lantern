class FixFlashlight < ActiveRecord::Migration
  def change
  	rename_column :flashlights, :name, :model
  	add_column :flashlights, :features, :text
  	add_column :flashlights, :specifications, :text
  end
end
