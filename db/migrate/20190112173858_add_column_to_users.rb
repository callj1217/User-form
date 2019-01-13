class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :num_siblings, :integer
  	add_column :users, :shoe_size, :float
  	add_column :users, :us_citizen, :boolean
  end
end
