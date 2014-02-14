class AddImage < ActiveRecord::Migration
  def change
  	add_column :flashlights, :image, :string
  	add_column :chargers, :image, :string
  	add_column :accessories, :image, :string
  end
end
