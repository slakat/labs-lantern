class AddAttemptsUser < ActiveRecord::Migration
  def change
  	add_column :users, :attempts, :integer
  end
end
