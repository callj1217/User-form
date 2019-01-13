class AddColumnToCars < ActiveRecord::Migration[5.1]
  def change
  	add_column :cars, :num_wheels, :integer
  	add_column :cars, :engine_size, :float
  	add_column :cars, :is_eletric, :boolean
  	add_column :cars, :date_purchased, :datetime
  end
end
