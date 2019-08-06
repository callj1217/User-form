class AddDeletedAtToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :deleted_at, :datetime
  end
end
