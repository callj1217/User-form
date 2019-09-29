class Movies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.float :rating
      t.datetime :date
      t.timestamp
    end
  end
end
