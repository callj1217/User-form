class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.string :kind
      t.integer :user_id

      t.timestamps
    end
  end
end
